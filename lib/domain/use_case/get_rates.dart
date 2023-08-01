import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/domain/model/currency_rate.dart';
import 'package:currency_rates/domain/model/currency_setting.dart';
import 'package:currency_rates/domain/model/rates_summary.dart';
import 'package:currency_rates/domain/repository/currency_rate_repository.dart';
import 'package:currency_rates/domain/repository/settings_repository.dart';
import 'package:rxdart/rxdart.dart';

class GetRates {
  final RatesRepository currencyRateRepository;
  final SettingsRepository settingsRepository;

  GetRates({
    required this.currencyRateRepository,
    required this.settingsRepository,
  });

  Stream<List<CurrencyRate>> get _ratesStream {
    final now = DateTime.now();

    return Stream.fromFuture(
      Future.wait(
        [
          currencyRateRepository.getRates(date: now),
          currencyRateRepository
              .getRates(date: now.add(const Duration(days: 1)))
              .then(
                (value) => value.isNotEmpty
                    ? Future.value(value)
                    : currencyRateRepository.getRates(
                        date: now.subtract(const Duration(days: 1)),
                      ),
              ),
        ],
      ).then(
        (value) => value.expand((element) => element).toList(),
      ),
    );
  }

  Stream<Map<int, CurrencySetting>> get _settingsStream =>
      settingsRepository.watchCurrencies();

  Stream<RatesSummary> execute() => CombineLatestStream.combine2(
        _ratesStream,
        _settingsStream,
        (rates, settings) {
          final Set<DateTime> dates = {};
          final Map<int, Currency> currencies = {};

          for (final rate in rates) {
            final id = rate.id;
            final currency = currencies[id];
            final setting = settings[id];

            if (currency == null) {
              currencies[id] = Currency(
                id: id,
                title: rate.code,
                rates: {rate.date: rate.rate},
                visible: setting?.visible ?? false,
                order: setting?.order ?? double.infinity,
                subTitle: '${rate.scale} ${rate.name.toLowerCase()}',
              );
            } else {
              currencies[id] = currency.copyWith(
                rates: {
                  ...currency.rates,
                  rate.date: rate.rate,
                },
              );
            }

            dates.add(rate.date);
          }

          final list = currencies.values.toList()
            ..sort(
              (left, right) => left.order.compareTo(right.order),
            );

          return RatesSummary(
            currencies: list,
            dates: dates.toList()..sort(),
            visible: list.where((element) => element.visible).toList(),
          );
        },
      );
}

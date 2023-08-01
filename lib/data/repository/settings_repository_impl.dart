import 'package:currency_rates/domain/model/currency_setting.dart';
import 'package:currency_rates/domain/repository/settings_repository.dart';
import 'package:hive/hive.dart';

class SettingsRepositoryImpl extends SettingsRepository {
  final Box<CurrencySetting> box;

  SettingsRepositoryImpl({required this.box});

  @override
  Future setCurrencies(List<CurrencySetting> currencies) => box.putAll(
        Map.fromEntries(
          currencies.map(
            (currency) => MapEntry(currency.id, currency),
          ),
        ),
      );

  @override
  Stream<Map<int, CurrencySetting>> watchCurrencies() async* {
    yield box.toMap().cast();
    yield* box.watch().map((event) => box.toMap().cast());
  }
}

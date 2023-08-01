import 'package:currency_rates/domain/model/currency_rate.dart';

abstract class RatesRepository {
  Future<List<CurrencyRate>> getRates({
    required DateTime date,
  });
}

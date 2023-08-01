import 'package:currency_rates/domain/model/currency.dart';

class RatesSummary {
  final List<DateTime> dates;
  final List<Currency> currencies;
  final List<Currency> visible;

  RatesSummary({
    required this.dates,
    required this.visible,
    required this.currencies,
  });
}

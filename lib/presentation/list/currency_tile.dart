import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/presentation/list/currency_info_cell.dart';
import 'package:currency_rates/presentation/list/rates_row.dart';
import 'package:flutter/widgets.dart';

class CurrencyTile extends StatelessWidget {
  final Currency currency;
  final List<DateTime> dates;

  const CurrencyTile({
    super.key,
    required this.dates,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return RatesRow(
      title: CurrencyCell(
        currency: currency,
      ),
      value1: _value(dates.firstOrNull),
      value2: _value(dates.lastOrNull),
    );
  }

  String _value(DateTime? date) =>
      (date == null ? null : currency.rates[date]?.toStringAsFixed(4)) ?? '-';
}

import 'package:currency_rates/presentation/list/rates_row.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateFormat _dateFormat = DateFormat('dd.MM.yy');

class HeaderRow extends StatelessWidget {
  final List<DateTime> dates;

  const HeaderRow({
    super.key,
    required this.dates,
  });

  @override
  Widget build(BuildContext context) {
    return RatesRow(
      background: Colors.grey.withOpacity(0.4),
      value1: _value(dates.firstOrNull),
      value2: _value(dates.lastOrNull),
    );
  }

  String _value(DateTime? date) =>
      (date == null ? null : _dateFormat.format(date)) ?? '-';
}

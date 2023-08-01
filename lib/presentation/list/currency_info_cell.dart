import 'package:currency_rates/domain/model/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyCell extends StatelessWidget {
  final Currency currency;

  const CurrencyCell({
    super.key,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          currency.title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          currency.subTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

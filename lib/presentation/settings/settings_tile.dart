import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/presentation/list/currency_info_cell.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final Currency currency;
  final ValueChanged<bool>? onChanged;

  const SettingsTile({
    super.key,
    this.onChanged,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      child: Row(
        children: [
          Expanded(
            child: CurrencyCell(
              currency: currency,
            ),
          ),
          const SizedBox(width: 8),
          Switch(
            value: currency.visible,
            onChanged: onChanged,
          ),
          const SizedBox(width: 16),
          const Icon(Icons.menu),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

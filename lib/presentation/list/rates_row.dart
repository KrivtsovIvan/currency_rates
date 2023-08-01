import 'package:flutter/widgets.dart';

class RatesRow extends StatelessWidget {
  final Widget? title;
  final String value1;
  final String value2;
  final Color? background;

  const RatesRow({
    super.key,
    this.title,
    this.background,
    required this.value1,
    required this.value2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      constraints: const BoxConstraints(
        minHeight: 40,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: title ?? const SizedBox(),
          ),
          Expanded(
            child: Center(
              child: Text(
                value1,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                value2,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

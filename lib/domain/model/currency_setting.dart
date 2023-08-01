import 'package:hive/hive.dart';

part 'currency_setting.g.dart';

@HiveType(typeId: 0)
class CurrencySetting extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final double order;

  @HiveField(2)
  final bool visible;

  CurrencySetting({
    required this.id,
    required this.visible,
    required this.order,
  });
}

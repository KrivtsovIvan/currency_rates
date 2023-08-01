import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required int id,
    required double order,
    required bool visible,
    required String title,
    required String subTitle,
    required Map<DateTime, double> rates,
  }) = _Currency;
}

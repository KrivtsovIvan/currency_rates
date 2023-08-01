import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_rate.freezed.dart';

part 'currency_rate.g.dart';

@freezed
class CurrencyRate with _$CurrencyRate {
  const factory CurrencyRate({
    @JsonKey(name: 'Cur_ID') required int id,
    @JsonKey(name: 'Date') required DateTime date,
    @JsonKey(name: 'Cur_Scale') required int scale,
    @JsonKey(name: 'Cur_Name') required String name,
    @JsonKey(name: 'Cur_Abbreviation') required String code,
    @JsonKey(name: 'Cur_OfficialRate') required double rate,
  }) = _CurrencyRate;

  factory CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRateFromJson(json);
}

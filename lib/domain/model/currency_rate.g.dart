// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyRate _$$_CurrencyRateFromJson(Map<String, dynamic> json) =>
    _$_CurrencyRate(
      id: json['Cur_ID'] as int,
      date: DateTime.parse(json['Date'] as String),
      scale: json['Cur_Scale'] as int,
      name: json['Cur_Name'] as String,
      code: json['Cur_Abbreviation'] as String,
      rate: (json['Cur_OfficialRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CurrencyRateToJson(_$_CurrencyRate instance) =>
    <String, dynamic>{
      'Cur_ID': instance.id,
      'Date': instance.date.toIso8601String(),
      'Cur_Scale': instance.scale,
      'Cur_Name': instance.name,
      'Cur_Abbreviation': instance.code,
      'Cur_OfficialRate': instance.rate,
    };

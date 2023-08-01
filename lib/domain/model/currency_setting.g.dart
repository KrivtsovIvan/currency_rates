// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_setting.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrencySettingAdapter extends TypeAdapter<CurrencySetting> {
  @override
  final int typeId = 0;

  @override
  CurrencySetting read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrencySetting(
      id: fields[0] as int,
      visible: fields[2] as bool,
      order: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CurrencySetting obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.order)
      ..writeByte(2)
      ..write(obj.visible);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencySettingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

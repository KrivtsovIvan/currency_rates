// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyRate _$CurrencyRateFromJson(Map<String, dynamic> json) {
  return _CurrencyRate.fromJson(json);
}

/// @nodoc
mixin _$CurrencyRate {
  @JsonKey(name: 'Cur_ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Scale')
  int get scale => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_Abbreviation')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'Cur_OfficialRate')
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyRateCopyWith<CurrencyRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRateCopyWith<$Res> {
  factory $CurrencyRateCopyWith(
          CurrencyRate value, $Res Function(CurrencyRate) then) =
      _$CurrencyRateCopyWithImpl<$Res, CurrencyRate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Cur_ID') int id,
      @JsonKey(name: 'Date') DateTime date,
      @JsonKey(name: 'Cur_Scale') int scale,
      @JsonKey(name: 'Cur_Name') String name,
      @JsonKey(name: 'Cur_Abbreviation') String code,
      @JsonKey(name: 'Cur_OfficialRate') double rate});
}

/// @nodoc
class _$CurrencyRateCopyWithImpl<$Res, $Val extends CurrencyRate>
    implements $CurrencyRateCopyWith<$Res> {
  _$CurrencyRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? scale = null,
    Object? name = null,
    Object? code = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyRateCopyWith<$Res>
    implements $CurrencyRateCopyWith<$Res> {
  factory _$$_CurrencyRateCopyWith(
          _$_CurrencyRate value, $Res Function(_$_CurrencyRate) then) =
      __$$_CurrencyRateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Cur_ID') int id,
      @JsonKey(name: 'Date') DateTime date,
      @JsonKey(name: 'Cur_Scale') int scale,
      @JsonKey(name: 'Cur_Name') String name,
      @JsonKey(name: 'Cur_Abbreviation') String code,
      @JsonKey(name: 'Cur_OfficialRate') double rate});
}

/// @nodoc
class __$$_CurrencyRateCopyWithImpl<$Res>
    extends _$CurrencyRateCopyWithImpl<$Res, _$_CurrencyRate>
    implements _$$_CurrencyRateCopyWith<$Res> {
  __$$_CurrencyRateCopyWithImpl(
      _$_CurrencyRate _value, $Res Function(_$_CurrencyRate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? scale = null,
    Object? name = null,
    Object? code = null,
    Object? rate = null,
  }) {
    return _then(_$_CurrencyRate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyRate implements _CurrencyRate {
  const _$_CurrencyRate(
      {@JsonKey(name: 'Cur_ID') required this.id,
      @JsonKey(name: 'Date') required this.date,
      @JsonKey(name: 'Cur_Scale') required this.scale,
      @JsonKey(name: 'Cur_Name') required this.name,
      @JsonKey(name: 'Cur_Abbreviation') required this.code,
      @JsonKey(name: 'Cur_OfficialRate') required this.rate});

  factory _$_CurrencyRate.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyRateFromJson(json);

  @override
  @JsonKey(name: 'Cur_ID')
  final int id;
  @override
  @JsonKey(name: 'Date')
  final DateTime date;
  @override
  @JsonKey(name: 'Cur_Scale')
  final int scale;
  @override
  @JsonKey(name: 'Cur_Name')
  final String name;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  final String code;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  final double rate;

  @override
  String toString() {
    return 'CurrencyRate(id: $id, date: $date, scale: $scale, name: $name, code: $code, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyRate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, scale, name, code, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyRateCopyWith<_$_CurrencyRate> get copyWith =>
      __$$_CurrencyRateCopyWithImpl<_$_CurrencyRate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyRateToJson(
      this,
    );
  }
}

abstract class _CurrencyRate implements CurrencyRate {
  const factory _CurrencyRate(
          {@JsonKey(name: 'Cur_ID') required final int id,
          @JsonKey(name: 'Date') required final DateTime date,
          @JsonKey(name: 'Cur_Scale') required final int scale,
          @JsonKey(name: 'Cur_Name') required final String name,
          @JsonKey(name: 'Cur_Abbreviation') required final String code,
          @JsonKey(name: 'Cur_OfficialRate') required final double rate}) =
      _$_CurrencyRate;

  factory _CurrencyRate.fromJson(Map<String, dynamic> json) =
      _$_CurrencyRate.fromJson;

  @override
  @JsonKey(name: 'Cur_ID')
  int get id;
  @override
  @JsonKey(name: 'Date')
  DateTime get date;
  @override
  @JsonKey(name: 'Cur_Scale')
  int get scale;
  @override
  @JsonKey(name: 'Cur_Name')
  String get name;
  @override
  @JsonKey(name: 'Cur_Abbreviation')
  String get code;
  @override
  @JsonKey(name: 'Cur_OfficialRate')
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyRateCopyWith<_$_CurrencyRate> get copyWith =>
      throw _privateConstructorUsedError;
}

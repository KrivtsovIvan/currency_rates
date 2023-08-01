import 'package:currency_rates/domain/model/currency.dart';
import 'package:equatable/equatable.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object?> get props => [];
}

class SettingsLoaded extends SettingsState {
  final List<Currency> currencies;

  const SettingsLoaded(this.currencies);

  @override
  List<Object?> get props => [currencies];
}

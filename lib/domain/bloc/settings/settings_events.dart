import 'package:currency_rates/domain/model/currency.dart';

abstract class SettingsEvent {}

class SaveSettingsEvent extends SettingsEvent {
  final List<Currency> currencies;

  SaveSettingsEvent(this.currencies);
}

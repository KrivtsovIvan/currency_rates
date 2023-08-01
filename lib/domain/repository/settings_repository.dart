import 'package:currency_rates/domain/model/currency_setting.dart';

abstract class SettingsRepository {
  Future setCurrencies(List<CurrencySetting> currencies);

  Stream<Map<int, CurrencySetting>> watchCurrencies();
}

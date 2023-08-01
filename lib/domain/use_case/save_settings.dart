import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/domain/model/currency_setting.dart';
import 'package:currency_rates/domain/repository/settings_repository.dart';

class SaveSettings {
  final SettingsRepository settingsRepository;

  SaveSettings({required this.settingsRepository});

  Future execute(List<Currency> currencies) => settingsRepository.setCurrencies(
        currencies
            .map(
              (currency) => CurrencySetting(
                id: currency.id,
                visible: currency.visible,
                order: currencies.indexOf(currency).toDouble(),
              ),
            )
            .toList(),
      );
}

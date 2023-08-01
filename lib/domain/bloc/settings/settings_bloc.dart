import 'package:currency_rates/domain/bloc/base/base_bloc.dart';
import 'package:currency_rates/domain/bloc/settings/settings_events.dart';
import 'package:currency_rates/domain/bloc/settings/settings_states.dart';
import 'package:currency_rates/domain/use_case/save_settings.dart';

class SettingsBloc extends BaseBloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    super.initialState, {
    required SaveSettings saveSettings,
  }) {
    on<SaveSettingsEvent>(
      (event, emit) => saveSettings.execute(event.currencies),
    );
  }
}

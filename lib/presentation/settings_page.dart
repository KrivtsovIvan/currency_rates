import 'package:currency_rates/core/injector.dart';
import 'package:currency_rates/domain/bloc/settings/settings_bloc.dart';
import 'package:currency_rates/domain/bloc/settings/settings_events.dart';
import 'package:currency_rates/domain/bloc/settings/settings_states.dart';
import 'package:currency_rates/domain/model/currency.dart';
import 'package:currency_rates/presentation/settings/settings_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  final List<Currency> currencies;

  const SettingsPage({
    super.key,
    required this.currencies,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (_) => inject(param: currencies),
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoaded) {
            return _SettingsWidget(currencies: state.currencies);
          }

          throw UnimplementedError('Unsupported state $state');
        },
      ),
    );
  }
}

class _SettingsWidget extends StatefulWidget {
  final List<Currency> currencies;

  const _SettingsWidget({required this.currencies});

  @override
  State<_SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<_SettingsWidget> {
  late List<Currency> currencies = [...widget.currencies];
  late SettingsBloc bloc = context.read();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки валют'),
        actions: [
          IconButton(
            onPressed: () {
              bloc.add(SaveSettingsEvent(currencies));
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: ReorderableListView.builder(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];

          return SettingsTile(
            key: ValueKey(currency.id),
            currency: currency,
            onChanged: (enable) => setState(
              () => currencies[index] = currency.copyWith(visible: enable),
            ),
          );
        },
        onReorder: (int oldIndex, int newIndex) => setState(
          () {
            currencies.insert(newIndex > oldIndex ? newIndex - 1 : newIndex,
                currencies.removeAt(oldIndex));
          },
        ),
      ),
    );
  }
}

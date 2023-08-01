import 'package:currency_rates/core/injector.dart';
import 'package:currency_rates/domain/bloc/rates/rates_bloc.dart';
import 'package:currency_rates/domain/bloc/rates/rates_states.dart';
import 'package:currency_rates/domain/model/rates_summary.dart';
import 'package:currency_rates/presentation/list/currency_tile.dart';
import 'package:currency_rates/presentation/list/dates_row.dart';
import 'package:currency_rates/presentation/settings/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RatesBloc>(
      create: (_) => inject(),
      child: const _HomeWidget(),
    );
  }
}

class _HomeWidget extends StatelessWidget {
  const _HomeWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Курсы валют'),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: BlocBuilder<RatesBloc, RatesState>(
        builder: (context, state) {
          if (state is RatesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is RatesLoaded) {
            return _CurrenciesList(info: state.info);
          } else if (state is RatesLoadFailed) {
            return Center(child: Text(state.message));
          }

          throw UnimplementedError('Unsupported state $state');
        },
      ),
    );
  }
}

class _CurrenciesList extends StatelessWidget {
  final RatesSummary info;

  const _CurrenciesList({required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _header,
        _list,
      ],
    );
  }

  Widget get _header => HeaderRow(dates: info.dates);

  Widget get _list => Expanded(
        child: ListView.builder(
          itemCount: info.visible.length,
          itemBuilder: (context, index) {
            final currency = info.visible[index];

            return CurrencyTile(dates: info.dates, currency: currency);
          },
        ),
      );
}

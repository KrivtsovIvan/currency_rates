import 'package:currency_rates/domain/bloc/rates/rates_bloc.dart';
import 'package:currency_rates/domain/bloc/rates/rates_states.dart';
import 'package:currency_rates/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatesBloc, RatesState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: state is RatesLoaded
            ? IconButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(
                      currencies: state.info.currencies,
                    ),
                  ),
                ),
                icon: const Icon(Icons.settings),
              )
            : const SizedBox(
                height: double.infinity,
              ),
      ),
    );
  }
}

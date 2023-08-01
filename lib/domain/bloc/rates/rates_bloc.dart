import 'package:currency_rates/domain/bloc/base/base_bloc.dart';
import 'package:currency_rates/domain/bloc/rates/rates_events.dart';
import 'package:currency_rates/domain/bloc/rates/rates_states.dart';
import 'package:currency_rates/domain/use_case/get_rates.dart';

class RatesBloc extends BaseBloc<RatesEvent, RatesState> {
  final GetRates getRates;

  RatesBloc({
    required this.getRates,
  }) : super(const RatesLoading()) {
    addSubscription(
      getRates.execute().listen(
            (event) => add(RatesLoadedEvent(event)),
            onError: (_) => add(
              RatesLoadFailedEvent('Не удалось получить курсы валют'),
            ),
          ),
    );

    on<RatesLoadedEvent>(
      (event, emit) => emit(RatesLoaded(event.info)),
    );

    on<RatesLoadFailedEvent>(
      (event, emit) => emit(RatesLoadFailed(event.message)),
    );
  }
}

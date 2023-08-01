import 'package:currency_rates/domain/model/rates_summary.dart';
import 'package:equatable/equatable.dart';

abstract class RatesState extends Equatable {
  const RatesState();

  @override
  List<Object?> get props => [];
}

class RatesLoading extends RatesState {
  const RatesLoading();
}

class RatesLoaded extends RatesState {
  final RatesSummary info;

  const RatesLoaded(this.info);

  @override
  List<Object?> get props => [info];
}

class RatesLoadFailed extends RatesState {
  final String message;

  const RatesLoadFailed(this.message);

  @override
  List<Object?> get props => [message];
}

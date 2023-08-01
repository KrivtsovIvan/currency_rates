import 'package:currency_rates/domain/model/rates_summary.dart';

abstract class RatesEvent {}

class RatesLoadedEvent extends RatesEvent {
  final RatesSummary info;

  RatesLoadedEvent(this.info);
}

class RatesLoadFailedEvent extends RatesEvent {
  final String message;

  RatesLoadFailedEvent(this.message);
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class BaseBloc<Event, State> extends Bloc<Event, State> {
  final _subscription = CompositeSubscription();

  BaseBloc(super.initialState);

  void addSubscription(StreamSubscription subscription) =>
      _subscription.add(subscription);

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}

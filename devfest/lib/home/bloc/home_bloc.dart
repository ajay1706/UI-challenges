import 'dart:async';
import 'package:bloc/bloc.dart';

import './index.dart';
import 'package:meta/meta.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static final HomeBloc _homeBlocSingleton = HomeBloc._internal();

  factory HomeBloc() {
    return _homeBlocSingleton;
  }

  HomeBloc._internal();

  @override
  HomeState get initialState => UnHomeState();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    try {
      yield UnHomeState();
      yield await event.applyAsync();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
     
    }
  }
}
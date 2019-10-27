import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  static final ConfigBloc _configBlocSingleton = ConfigBloc._internal();
  factory ConfigBloc() {
    return _configBlocSingleton;
  }
  ConfigBloc._internal();

  bool darkModeOn = false;

  ConfigState get initialState =>  UnConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    try{
yield UnConfigState();
yield await event.applyAsync(currentState: state , bloc: this);
    }
    catch(_,stackTrace) {
      print(stackTrace);
      yield state;
    }
  
}}
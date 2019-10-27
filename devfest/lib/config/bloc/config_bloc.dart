import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  @override
  ConfigState get initialState => InitialConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    // TODO: Add Logic
  }
}

import 'package:equatable/equatable.dart';

abstract class ConfigState extends Equatable {
  const ConfigState();
}

class InitialConfigState extends ConfigState {
  @override
  List<Object> get props => [];
}

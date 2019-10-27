import 'package:equatable/equatable.dart';

abstract class ConfigState extends Equatable {
  const ConfigState();
  ConfigState getStateCopy();
}

class InConfigState extends ConfigState {


  @override
  List<Object> get props => [];

  @override
  String toString() {
    // TODO: implement toString
    return 'InConfigState';
  }

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return InConfigState();
  }


}


class UnConfigState extends ConfigState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    // TODO: implement toString
    return 'UnConfigState';
  }

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return UnConfigState();
  }
}
class ErrorConfigState extends ConfigState {
    final String errorMessage;
  ErrorConfigState(this.errorMessage);
  @override
  List<Object> get props => [];

  @override
  String toString() {
    // TODO: implement toString
    return 'InConfigState';
  }

  @override
  ConfigState getStateCopy() {
    // TODO: implement getStateCopy
    return ErrorConfigState(this.errorMessage);
  }


}
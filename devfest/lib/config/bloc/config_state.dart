import 'package:equatable/equatable.dart';

abstract class ConfigState extends Equatable {
  // const ConfigState();
  ConfigState getStateCopy();
}

class InConfigState extends ConfigState {


  @override
  List<Object> get props => [];

  @override
  String toString() {

    return 'InConfigState';
  }

  @override
  ConfigState getStateCopy() {
   
    return InConfigState();
  }


}


class UnConfigState extends ConfigState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
   
    return 'UnConfigState';
  }

  @override
  ConfigState getStateCopy() {
   
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

    return 'InConfigState';
  }

  @override
  ConfigState getStateCopy() {
   
    return ErrorConfigState(this.errorMessage);
  }


}
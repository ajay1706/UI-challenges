import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();
    HomeState getStateCopy();
}

class UnHomeState extends HomeState {
  @override
  List<Object> get props => [];
@override
  String toString() {
  
    return 'UnHomeState';
  }
  @override
  HomeState getStateCopy() {
    
    return UnHomeState();
  }
  
}
class InHomeState extends HomeState {
  @override
  List<Object> get props => [];
@override
  String toString() {
  
    return 'InHomeState';
  }
  @override
  HomeState getStateCopy() {
    
    return InHomeState();
  }
  
}

class ErroHomeState extends HomeState {
    final String errorMessage;
  ErroHomeState(this.errorMessage);
  @override
  List<Object> get props => [];

  @override
  String toString() {

    return 'InConfigState';
  }

  @override
  HomeState getStateCopy() {
   
    return ErroHomeState(this.errorMessage);
  }


}
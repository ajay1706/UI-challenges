import 'package:devfest/home/bloc/home_bloc.dart';
import 'package:devfest/home/bloc/home_state.dart';
import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();


  Future<HomeState> applyAsync({HomeState currentState,HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent{

  @override
  String toString() {
   
    return 'LoadHomeEvent';
  }
  @override
  Future<HomeState> applyAsync({HomeState currentState, HomeBloc bloc}) async{
   
    try{
      await Future.delayed(Duration(seconds:1));
      return InHomeState();
    }catch(_,stackTrace){
      print(stackTrace);
      return ErroHomeState(_?.toString());
    }
  }

  @override
  // TODO: implement props
  List<Object> get props => null;

}
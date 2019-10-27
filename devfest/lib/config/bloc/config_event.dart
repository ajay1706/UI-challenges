import 'package:devfest/config/bloc/bloc.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:equatable/equatable.dart';

abstract class ConfigEvent extends Equatable {
  const ConfigEvent();
@override
 
  List<Object> get props => [] ;

  Future<ConfigState> applyAsync({ConfigState currentState,ConfigBloc bloc});
}
class DarkModeEvent extends ConfigEvent{
  final bool darkOn;
  DarkModeEvent(this.darkOn);

@override
  String toString() {
  
    return 'DarkModeEvenr';
  }

  @override
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc}) async {
    try{
      bloc.darkModeOn = darkOn;
      DevFest.prefs.setBool(DevFest.darkModePref, darkOn);
    }catch(_,stackTrace){
      return ErrorConfigState(_??toString());
    }




    return InConfigState();
  }

}

class LoadConfigEvent extends ConfigEvent{

@override
  String toString() {
   
    return 'LoadConfigEvent';
  }

  @override
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc}) async {

    try{
      await Future.delayed(Duration(seconds: 2));
      return InConfigState();

    }
    catch(_,stackTrace){
      print(stackTrace);
      return ErrorConfigState(_?? toString());


    }
   
    
  }

}
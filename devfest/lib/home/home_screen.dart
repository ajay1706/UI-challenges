import 'package:devfest/home/bloc/home_bloc.dart';
import 'package:devfest/home/bloc/home_event.dart';
import 'package:devfest/home/bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_widgets.dart/home_fornt.dart';


class HomeScreen extends StatefulWidget {
   


   const HomeScreen(
     {Key key,
       @required HomeBloc homeBloc}) : _homeBloc = homeBloc ,
       super(key:key);
       final HomeBloc _homeBloc;
  @override
  HomeScreenState createState() => HomeScreenState(_homeBloc);
}

class HomeScreenState extends State<HomeScreen> {

 final HomeBloc _homeBloc;
 HomeScreenState(this._homeBloc);

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._homeBloc.add(LoadHomeEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: widget._homeBloc,
      builder: (context , currentState) {
        if (currentState is UnHomeState) {
          return Center(child: CircularProgressIndicator(),);
        }
        return HomeFront();
      },


      
    );
  }
}
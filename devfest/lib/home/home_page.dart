import 'package:devfest/home/bloc/home_bloc.dart';
import 'package:devfest/home/home_screen.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    var _homeBloc =  HomeBloc();
    return DevScaffold(
      title: 'Home Page',
      body: HomeScreen(
        homeBloc: _homeBloc,
      ),
     
      
      
    );
  }
}
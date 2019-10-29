import 'package:devfest/agenda/agenda_page.dart';
import 'package:devfest/agenda/session_detail.dart';
import 'package:devfest/config/bloc/bloc.dart';
import 'package:devfest/home/home_page.dart';
import 'package:devfest/speakers/speaker_page.dart';
import 'package:devfest/sponsors/sponsors_page.dart';
import 'package:devfest/team/team_page.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfgiPage extends StatefulWidget {
  @override
  _ConfgiPageState createState() => _ConfgiPageState();
}

class _ConfgiPageState extends State<ConfgiPage> {
  ConfigBloc configBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
    setUpApp();
      }
      setUpApp(){
          configBloc = ConfigBloc();
          configBloc.darkModeOn = DevFest.prefs.getBool(DevFest.darkModePref) ?? false;

      }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (context) => ConfigBloc(),
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (context,state){
          return MaterialApp(
            title: 'DevFest',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: DevFest.google_sans_family,
              primarySwatch: Colors.red,
              primaryColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              disabledColor: Colors.grey,
              canvasColor: configBloc.darkModeOn ? Colors.black : Colors.grey[50],
              cardColor: configBloc.darkModeOn ? Colors.black : Colors.white,
              brightness: configBloc.darkModeOn ? Brightness.dark : Brightness.light,
              buttonTheme: Theme.of(context).buttonTheme.copyWith(
                colorScheme: configBloc.darkModeOn?ColorScheme.dark():ColorScheme.light()
              ),
              appBarTheme: AppBarTheme(elevation: 0),
              


            ),
            home: HomePage(),
            routes: {
              HomePage.routeName:(context) => HomePage(),
              AgendaPage.routeName:(context) => AgendaPage(),
               SpeakerPage.routeName:(context) => SpeakerPage(),
              TeamPage.routeName:(context) => TeamPage(),
              SponsorPage.routeName:(context) => SponsorPage()



            },
          );
        },
      ),
      
    );
  }
}
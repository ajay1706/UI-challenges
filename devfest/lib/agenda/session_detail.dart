import 'package:devfest/home/session.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';

class SessionDetail extends StatelessWidget {
final Session session;
  static const String routeName = '/session_detail';

  const SessionDetail({Key key,@required this.session}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: session.speakerName,
     body: SingleChildScrollView(  
       
     ),
      
    );
  }
}
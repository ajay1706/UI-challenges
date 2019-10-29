import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest/home/session.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:devfest/utils/tools.dart';
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
       padding: const EdgeInsets.all(18),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
           Center(
             child: Hero(
               tag: session.speakerImage,
               child: CircleAvatar(
                 radius: 100,
                 backgroundImage: CachedNetworkImageProvider(session.speakerImage),
               ),
             ),
           ),
           SizedBox(height: 10,),
           Text("${session.speakerDesc}",
           textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.title.copyWith(
             fontSize: 18,
             color: Tools.multiColors[Random().nextInt(4)]
           ),),
           SizedBox(height: 20,),
           Text("${session.sessionTitle}",
           textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.title.copyWith(
             fontSize: 24,
            fontWeight: FontWeight.bold
           ),),
           SizedBox(height: 10,),
            Text("${session.sessionDesc}",
           textAlign: TextAlign.center,
           style: Theme.of(context).textTheme.title.copyWith(
             fontSize: 14,
             color: Colors.black54
           
           ),),


         ],
       ),
     ),
      
    );
  }
}
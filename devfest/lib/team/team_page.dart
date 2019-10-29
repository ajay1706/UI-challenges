import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest/home/team_data.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:devfest/utils/tools.dart';
import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {

  static const String routeName = '/team_page';
  
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Team",
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: teams.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 0,
child: Padding(
  padding: const EdgeInsets.all(12),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      ConstrainedBox(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height*0.2,
          width:MediaQuery.of(context).size.width*0.3, 
            ),
            child: CachedNetworkImage(
fit: BoxFit.cover,
imageUrl: teams[i].image,
            ),
      ),
      SizedBox(width: 20,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(teams[i].name,
            style: Theme.of(context).textTheme.title,),
            SizedBox(height: 8,),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: MediaQuery.of(context).size.width*0.2,
              height: 5,
              color: Tools.multiColors[Random().nextInt(4)],
            )
          ],
        ),
      )
    ],
  ),

),
          );

        },
      ),
    );
      
    
  }
}
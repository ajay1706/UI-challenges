import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest/home/team_data.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:devfest/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TeamPage extends StatelessWidget {

  static const String routeName = '/team_page';
    _launchUrl(String url)async {
  if(await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}
  Widget socialActions(context) => FittedBox(
  child: Row(  
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      IconButton(
        icon: Icon(FontAwesomeIcons.facebookF),
        onPressed: () async {
          await _launchUrl('https://www.facebook.com/profile.php?id=100007109044151');
        },
      ),
       IconButton(
        icon: Icon(FontAwesomeIcons.twitter),
        onPressed: () async {
          await _launchUrl('https://twitter.com/droid_aj');
        },
      ),
       IconButton(
        icon: Icon(FontAwesomeIcons.linkedin),
        onPressed: () async {
          await _launchUrl('https://www.linkedin.com/in/ajay-sharma-33683a10b/');
        },
      ),
        IconButton(
        icon: Icon(FontAwesomeIcons.instagram),
        onPressed: () async {
          await _launchUrl('https://www.instagram.com/droid_aj/');
        },
      ),
        IconButton(
        icon: Icon(FontAwesomeIcons.github),
        onPressed: () async {
          await _launchUrl('https://www.github.com/ajay1706');
        },
      ),
       IconButton(
        icon: Icon(FontAwesomeIcons.envelope),
        onPressed: () async {
          var emailUrl =
                    '''mailto:ajay97456@gmail.com?subject=Support Needed For DevFest App&body={Name: Ajay Sharma},Email: ajay97456@gmail.com}''';
                var out = Uri.encodeFull(emailUrl);
                await _launchUrl(out);
        },
      )
    ],
  ),
);
  
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
            ),
            SizedBox(height: 10,),
            Text(teams[i].desc,
            style: Theme.of(context).textTheme.subtitle,),
             SizedBox(height: 10,),
            Text(teams[i].contribution,
            style: Theme.of(context).textTheme.caption,),
            SizedBox(height: 10,),
            socialActions(context)

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
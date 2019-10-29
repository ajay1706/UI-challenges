import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfest/home/session.dart';
import 'package:devfest/universal/dev_scaffold.dart';
import 'package:devfest/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SessionDetail extends StatelessWidget {
final Session session;
  static const String routeName = '/session_detail';
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
           socialActions(context),


         ],
       ),
     ),
      
    );
  }
}
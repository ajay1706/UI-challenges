import 'package:devfest/agenda/agenda_page.dart';
import 'package:devfest/config/bloc/bloc.dart';
import 'package:devfest/speakers/speaker_page.dart';
import 'package:devfest/sponsors/sponsors_page.dart';
import 'package:devfest/team/team_page.dart';
import 'package:devfest/universal/image_card.dart';
import 'package:devfest/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFront extends StatelessWidget {

_launchUrl(String url)async {
  if(await canLaunch(url)){
    await launch(url);
  }else{
    throw 'Could not launch $url';
  }
}
List<Widget> devFestTexts(context) => [
 Text(
          DevFest.welcomeText,
          style: Theme.of(context).textTheme.headline, ),
          SizedBox(height: 10,),
          Text(
            DevFest.descText,
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          )
];

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
Widget newActions(context) => Wrap(  
  alignment: WrapAlignment.center,
  spacing: 20,
  runSpacing: 20,
  children: <Widget>[

ActionCard(icon: Icons.schedule,title: DevFest.agenda_text,color: Colors.red,onPressed: (){ Navigator.pushNamed(context, AgendaPage.routeName);},),
ActionCard(icon: Icons.person,title: DevFest.speakers_text,color: Colors.green,onPressed: (){Navigator.pushNamed(context, SpeakerPage.routeName);},),
ActionCard(icon: Icons.people,title: DevFest.team_text,color: Colors.amber,onPressed: (){Navigator.pushNamed(context, TeamPage.routeName);},),
ActionCard(icon: Icons.attach_money,title: DevFest.sponsor_text,color: Colors.purple,onPressed: (){Navigator.pushNamed(context, SponsorPage.routeName);},),
ActionCard(icon: Icons.question_answer,title: DevFest.faq_text,color: Colors.brown,onPressed: (){},),
ActionCard(icon: Icons.map,title: DevFest.map_text,color: Colors.blue,onPressed: (){},)

    
    
  ],
);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        ImageCard(img: ConfigBloc().darkModeOn ? DevFest.banner_dark: DevFest.banner_light,),
        SizedBox(height: 20,),
        ...devFestTexts(context),
         SizedBox(height: 20,),
         newActions(context),
         SizedBox(height: 20,),
         socialActions(context),
         SizedBox(height: 20,),
         Text(
           DevFest.app_version,
             style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),

         )
       
        ],
      ),
      
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({Key key, this.onPressed, this.icon, this.title, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
  borderRadius: BorderRadius.circular(8),
  child:   Ink(
    
    height: MediaQuery.of(context).size.height*0.1,
  width: MediaQuery.of(context).size.width*0.2,
  decoration: BoxDecoration(
    color: ConfigBloc().darkModeOn ? Tools.hexToColor('#1f2124'): Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: !ConfigBloc().darkModeOn ? [
  BoxShadow(color: Colors.grey[200],
  blurRadius: 10,
  spreadRadius: 5)
    ] : null
  ),
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
  Icon(
    icon,
    color: color,),
    SizedBox(height: 10,),
    Text(title,
    style: Theme.of(context).textTheme.title.copyWith(fontSize: 12),)
    ],
  ),
  
  ),
  onTap: onPressed,
);
  }
}
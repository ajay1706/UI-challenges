import 'package:devfest/config/bloc/bloc.dart';
import 'package:devfest/universal/image_card.dart';
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
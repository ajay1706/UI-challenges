import 'package:flutter/material.dart';

class DressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width:15 ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic4.jpeg",fit: BoxFit.cover,height: 170,width: (MediaQuery.of(context).size.width / 2) -15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( ' \$499',
                  style: TextStyle(  
                    fontFamily: 'Quicksand',
                    fontSize: 15
                  ),),
                )

              ],
            ),

               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic5.jpeg",fit: BoxFit.cover,height: 170,width: (MediaQuery.of(context).size.width / 2) -15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( ' \$599',
                  style: TextStyle(  
                    fontFamily: 'Quicksand',
                    fontSize: 15
                  ),),
                )

              ],
            )
          ],
        ),
         Row(
          children: <Widget>[
            SizedBox(width:15 ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic3.jpeg",fit: BoxFit.cover,height: 170,width: (MediaQuery.of(context).size.width / 2) -15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( ' \$499',
                  style: TextStyle(  
                    fontFamily: 'Quicksand',
                    fontSize: 15
                  ),),
                )

              ],
            ),
         
               Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic2.jpeg",fit: BoxFit.cover,height: 170,width: (MediaQuery.of(context).size.width / 2) -15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text( ' \$599',
                  style: TextStyle(  
                    fontFamily: 'Quicksand',
                    fontSize: 15
                  ),),
                )

              ],
            )
          ],
        )
      ],
      
    );
  }
}
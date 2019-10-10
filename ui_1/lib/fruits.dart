import 'package:flutter/material.dart';
class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
            
              
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/picthree.jpeg", "Orange",' 0.75', true),
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/pictwo.jpeg", "Orange",' 0.75', false),
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/picone.jpeg", "Orange",' 0.75', true)

              ],
            ),
                 Column(
              children: <Widget>[
                SizedBox(height: 30,),
              
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/picone.jpeg", "Orange",' 0.75', false),
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/picfour.jpeg", "Orange",' 0.75', true),
                getFruitCard("/Users/droidaj/UI-challenges/ui_1/assets/picfive.jpeg", "Orange",' 0.75', false)

              ],
            )
          ],
        )
      ],
      
    );
  }

Widget getFruitCard(String imgPath , String fruitName, String price , bool isFav){
return Padding(
padding: EdgeInsets.all(10 ),
child: Container(
  height: 200,
  width: (MediaQuery.of(context).size.width/2)-20,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        blurRadius: 2,
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2.0
        
      )
    ]
  ),
  child:Column(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              image: DecorationImage(  
                image: AssetImage(imgPath),
                fit: BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: isFav ? Icon(Icons.favorite,color:Colors.red) :
             Icon(Icons.favorite_border,color:Colors.red) ,
            ),
          )
        ],
      ),
      SizedBox(height: 15,),
      Text(fruitName,
      style:TextStyle(  
        fontFamily:'Montserrat',
        fontSize:14,
        fontWeight:FontWeight.bold
      
      )),
          Text('\$' + price + ' each',
      style:TextStyle(  
        fontFamily:'Montserrat',
        fontSize:14,
       color: Colors.grey
      
      ))
    ],
  ) ,
),
);

}

}
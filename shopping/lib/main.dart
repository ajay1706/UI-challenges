import 'package:flutter/material.dart';
import './details.dart';

void main() => runApp(MaterialApp( 
  home:HomePage()
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic4.jpeg",fit:BoxFit.cover,
              height: 400,),
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                        Text(
                    'Louis W. & A.P.C',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                    Text(
                      "Drop a Chic Selection of Outwear",
                      style:TextStyle(  
                        fontFamily:'Quicksand',
                        fontSize:20,
                        color:Colors.white,
                        fontWeight:FontWeight.w200
                      )
                    ),
                    SizedBox(
                      height: 7,
                    ),
                       Text(
                      "For 2019 Spring/Summer",
                      style:TextStyle(  
                        fontFamily:'Quicksand',
                        fontSize:20,
                        color:Colors.white,
                        fontWeight:FontWeight.w200
                      )
                    ),
           
                    SizedBox(
                      height: 175.0,
                    ),
                    FloatingActionButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(  
                          builder:(context) => Detailspage()
                        ));
                      },
                      mini: true,
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(Icons.arrow_forward_ios,color:Colors.black),
                      ),

                    )

                  ],
                ),
              ),

            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset("/Users/droidaj/UI-challenges/shopping/assets/pic5.jpeg",fit:BoxFit.cover,height:400)
            ],
          )
        ],
        
      ),
      bottomNavigationBar:
        Material(  
          child: Container(
            margin: EdgeInsets.only(bottom: 5
            ),

            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.home,
                   color:Colors.grey,
                   size:25),
                        Icon(Icons.menu,
                   color:Colors.black,
                   size:25),
                   Icon(Icons.search,
                   color:Colors.grey,
                   size:25),
                        Icon(Icons.lightbulb_outline,
                   color:Colors.grey,
                   size:25),

              ],
            ),
          ),
        )
      
    );
  }
}
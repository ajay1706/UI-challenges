import 'package:flutter/material.dart';
import 'package:ui_1/fruits.dart';

void main() => runApp(MaterialApp(

  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

    TabController tabController;

     @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this,length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(  
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10,right: 15,bottom: 10,left: 15),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(  
                      image: AssetImage("/Users/droidaj/UI-challenges/ui_1/assets/picsix.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu,
                  color: Colors.black,
                  size: 26,),
                  onPressed: (){},
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[

                Tab(
                  child: Text(
                    "Fruits",
                    style:TextStyle(  
                      fontSize:33,
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold
                    )
                  ),
                ),
                    Tab(
                  child: Text(
                    "Bread",
                    style:TextStyle(  
                      fontSize:33,
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold
                    )
                  ),
                ),
                    Tab(
                  child: Text(
                    "Drinks",
                    style:TextStyle(  
                      fontSize:33,
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold
                    )
                  ),
                )



              ],

            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                FruitsPage(),
                 FruitsPage(),
                  FruitsPage(),
                 

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar:Material(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
               ),
               height: 60,
               width: MediaQuery.of(context).size.width,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(bottom: 5.0,),
                     child: Text(
                       "Filters",
                       style:TextStyle(  
                    fontSize:15,
                      fontFamily:'Montserrat',
                      fontWeight:FontWeight.bold
                       ),
                       
                     ),
                     decoration: BoxDecoration(
                       border: Border(
                         bottom: BorderSide(
                           color: Colors.black,
                           style: BorderStyle.solid,
                           width: 1
                         )
                       )
                     ),
                   ),
                   Icon(Icons.search,
                   color:Colors.black,
                   size:25),
                        Icon(Icons.favorite_border,
                   color:Colors.black,
                   size:25),
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                       color: Colors.red
                     ),
                     height: 45,
                     width: 75,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         Text("12",style:TextStyle(  
                           fontFamily:'Montserrat',
                           color:Colors.white,
                           fontSize:15,
                           fontWeight:FontWeight.bold
                         )),
                         Icon(Icons.shopping_cart,color:Colors.white,size:15)
                       ],
                     ),
                   )
                 ],
               ),
        ),
      ),
      
    );
  }
}


import 'package:flutter/material.dart';

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
          )
        ],
      ),
      
    );
  }
}


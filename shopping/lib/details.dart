import 'package:flutter/material.dart';
import './dresslist.dart';

class Detailspage extends StatefulWidget {
  @override
  _DetailspageState createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> with SingleTickerProviderStateMixin{

TabController tabController;

@override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this,length:5 );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(  
                    image: AssetImage("/Users/droidaj/UI-challenges/shopping/assets/pic4.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios,color:Colors.white),
                  onPressed:(){
                    Navigator.of(context).pop();
                  } ,
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                    onPressed:(){
                 
                    } ,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(Icons.shopping_basket,color:Colors.black),
                    ),
                    mini: true,
                    elevation: 0,
                ),
              ),
                  ),
              Padding(
                padding: EdgeInsets.only(left: 15,top: 100),
                child: Text("Woman",
                style:TextStyle(
                  color:Colors.white,
                  fontFamily:'Montserrat',
                  fontSize:37,
                  fontWeight:FontWeight.normal
                )),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding:EdgeInsets.only(left: 15,right: 15) ,
            child: Text("Cutting-edge items to stay in style, perfect for all of your moments",
            style:TextStyle(fontFamily: 'Quicksand',fontSize:18, color: Colors.black)),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 100,
            child: ListView(
              padding: EdgeInsets.only(left: 15.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(  
                      image: AssetImage("/Users/droidaj/UI-challenges/shopping/assets/pic3.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 100,
                  child: Center(
                    child:Text(
                      "New In",
                      style:TextStyle(
                        fontFamily:'Montserrat',
                        color:Colors.white,
                        fontSize:15,
                        fontWeight:FontWeight.bold
                      )
                    ) ,
                  ),
                ),
                SizedBox(width: 15,),
                   Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(  
                      image: AssetImage("/Users/droidaj/UI-challenges/shopping/assets/pic4.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 100,
                  child: Center(
                    child:Text(
                      "Tops",
                      style:TextStyle(
                        fontFamily:'Montserrat',
                        color:Colors.white,
                        fontSize:15,
                        fontWeight:FontWeight.bold
                      )
                    ) ,
                  ),
                ),
                            SizedBox(width: 15,),
                   Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(  
                      image: AssetImage("/Users/droidaj/UI-challenges/shopping/assets/pic5.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 100,
                  child: Center(
                    child:Text(
                      "Pants",
                      style:TextStyle(
                        fontFamily:'Montserrat',
                        color:Colors.white,
                        fontSize:15,
                        fontWeight:FontWeight.bold
                      )
                    ) ,
                  ),
                ),
                            SizedBox(width: 15,),
                   Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(  
                      image: AssetImage("/Users/droidaj/UI-challenges/shopping/assets/pic2.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 100,
                  child: Center(
                    child:Text(
                      "Accessories",
                      style:TextStyle(
                        fontFamily:'Montserrat',
                        color:Colors.white,
                        fontSize:15,
                        fontWeight:FontWeight.bold
                      )
                    ) ,
                  ),
                )




              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 5),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("All",
                  style:TextStyle(  
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  )),
                ),
                      Tab(
                  child: Text("Coats",
                  style:TextStyle(  
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  )),
                ),
                      Tab(
                  child: Text("Jackets",
                  style:TextStyle(  
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  )),
                ),
                      Tab(
                  child: Text("Blazers",
                  style:TextStyle(  
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  )),
                ),
                      Tab(
                  child: Text("Dresses",
                  style:TextStyle(  
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                  )),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height-350,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                DressList(),
                DressList(),
                DressList(),
                DressList(),
                DressList(),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}
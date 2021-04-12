import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nursurey/plants.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  // ignore: missing_return
  Void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu_outlined),
                  onPressed: () {},
                ),
                FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    mini: true,
                    elevation: 0.0,
                    child: Icon(
                        Icons.shopping_cart_outlined, color: Colors.black,
                        size: 20.0)
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text('Top picks',
              style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Top',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outdoor',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Tab(
                  child: Text(
                    'Indoor',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                Tab(
                  child: Text(
                    'plants',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Montserrat'),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 150.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Plants(),
                Plants(),
                Plants(),
                Plants(),
              ],

            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_online_movie_shop/Serial/screen/SerialScreen.dart';
import '../Const.dart';
import '../Game/screen/GameScreen.dart';
import '../Movie/screen/MovieScreen.dart';
import 'Cart/CartScreen.dart';
import 'DrawerItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Container(
          //
          child: DrawerItem(),
          //
        ),
        extendBodyBehindAppBar: true,
        bottomNavigationBar: TabBar(
          labelColor: Colors.black,
          unselectedLabelStyle: kUnSelectedTextTabView,
          labelStyle: kSelectedTextTabView,
          unselectedLabelColor: Color(0xFF92E348),
          indicatorSize: TabBarIndicatorSize.tab,

          // borderRadius: BorderRadius.circular(10),
          // color: Color(0xFF92E348),
          indicator: ShapeDecoration(
            shape: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0,
                  style: BorderStyle.solid),
            ),
            color: Color(0xFF92E348),
          ),

          tabs: [
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("فیلم"),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("سریال"),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.center,
                child: Text("بازی"),
              ),
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
            ),
          ],
          elevation: 0,
        ),
        body: TabBarView(
          children: [
            MovieScreen(),
            SerialScreen(),
            GameScreen(),
          ],
        ),
      ),
    );
  }
}

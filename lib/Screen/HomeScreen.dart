import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Item/DrawerItem.dart';
import '../Const.dart';
import 'GameScreen.dart';
import 'MovieScreen.dart';
import 'SerialScreen.dart';

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
          //
          child: DrawerItem(),
          //
          //
        ),
        extendBodyBehindAppBar: true,
        bottomNavigationBar: TabBar(
          labelColor: Colors.black,
          unselectedLabelStyle: kUnSelectedTextTabView,
          labelStyle: kSelectedTextTabView,
          unselectedLabelColor: Color(0xFF92E348),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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
              onPressed: () {},
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

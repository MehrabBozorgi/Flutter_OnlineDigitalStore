import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Game.dart';
import 'package:flutter_online_movie_shop/Model/Movie.dart';
import 'package:flutter_online_movie_shop/Model/Serial.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../Const.dart';
import 'AllGameListScreenItem.dart';

class AllGameScreen extends StatefulWidget {
  @override
  _AllGameScreenState createState() => _AllGameScreenState();
}

class _AllGameScreenState extends State<AllGameScreen> {
  List<Game> gameList = [];

  @override
  Widget build(BuildContext context) {
    getGameAll();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'مجموعه فیلم ها',
          style: kHomeTitleName,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: gameList.length,
          itemBuilder: (context, index) =>
              AllScreenGameItem(list: gameList, index: index),
        ),
      ),
    );
  }

  getGameAll() async {
    var url = Uri.parse(AppUrl.url + 'gameall');

    if (gameList.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              gameList.add(
                Game(
                  id: int.parse(data[i]['id']),
                  price: int.parse(data[i]['price']),
                  hajm: int.parse(data[i]['hajm']),
                  name: data[i]['name'],
                  description: data[i]['saleSakht'],
                  image_url: data[i]['image_url'],


                ),
              );
            });
          }
        }
      });
    }
  }
}

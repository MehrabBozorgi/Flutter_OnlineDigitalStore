import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Game.dart';
import 'package:flutter_online_movie_shop/Model/Movie.dart';
import 'package:flutter_online_movie_shop/Model/Serial.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../Const.dart';
import 'AllSerialListScreenItem.dart';

class AllSerialScreen extends StatefulWidget {
  @override
  _AllSerialScreenState createState() => _AllSerialScreenState();
}

class _AllSerialScreenState extends State<AllSerialScreen> {
  List<Serial> serialList = [];

  @override
  Widget build(BuildContext context) {
    getSerialAll();

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
          itemCount: serialList.length,
          itemBuilder: (context, index) =>
              AllSerialScreenItem(list: serialList, index: index),
        ),
      ),
    );
  }

  getSerialAll() async {
    var url = Uri.parse(AppUrl.url + 'serialall');

    if (serialList.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              serialList.add(
                Serial(
                  id: int.parse(data[i]['id']),
                  price: int.parse(data[i]['price']),

                  name: data[i]['name'],
                  description: data[i]['description'],
                  image_url: data[i]['image_url'],
                  saleSakht:  data[i]['saleSakht'],
                  keshvar:  data[i]['keshvar'],


                ),
              );
            });
          }
        }
      });
    }
  }
}

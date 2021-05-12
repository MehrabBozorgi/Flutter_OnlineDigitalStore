import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Movie.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../Const.dart';
import 'AllMovieScreenItem.dart';

class AllMovieScreen extends StatefulWidget {
  @override
  _AllMovieScreenState createState() => _AllMovieScreenState();
}

class _AllMovieScreenState extends State<AllMovieScreen> {
  List<Movie> movieList = [];

  @override
  Widget build(BuildContext context) {
    getMovieAll();

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
          itemCount: movieList.length,
          itemBuilder: (context, index) =>
              AllScreenMovieItem(list: movieList, index: index),
        ),
      ),
    );
  }

  getMovieAll() async {
    var url = Uri.parse(AppUrl.url + 'movieall');

    if (movieList.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              movieList.add(
                Movie(
                  id: int.parse(data[i]['id']),
                  price: int.parse(data[i]['price']),
                  zaman: int.parse(data[i]['zaman']),
                  name: data[i]['name'],
                  keshvar: data[i]['keshvar'],
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

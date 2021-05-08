import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Item/AllScreen/AllScreenItem.dart';
import 'package:flutter_online_movie_shop/Model/Movie.dart';
import 'package:flutter_online_movie_shop/Widgets/AppUrlWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../Const.dart';

class AllMovieScreen extends StatefulWidget {
  @override
  _AllMovieScreenState createState() => _AllMovieScreenState();
}

class _AllMovieScreenState extends State<AllMovieScreen> {
  List<Movie> movieList = [];
  List<Movie> animationList = [];

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
        margin: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
        //color: Colors.red,
        width: double.infinity,
        height:MediaQuery.of(context).size.height,
        //MediaQuery.of(context).size.height,
        child: AllScreenItem(
          list: movieList,
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
                  saleSakht: data[i]['saleSakht'],
                ),
              );
            });
          }
        }
      });
    }
  }


}

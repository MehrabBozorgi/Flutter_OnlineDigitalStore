import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Movie/AllScreen/AllRowMovieItem.dart';
import 'package:flutter_online_movie_shop/Main/PageView/PageViewMovieItem.dart';
import 'package:flutter_online_movie_shop/Main/star/StarItem.dart';
import 'package:flutter_online_movie_shop/Movie/item/MovieScreen_ListViewItem.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';

import '../../Model/Stars.dart';
import '../../Model/Movie.dart';
import '../../Model/PageView.dart';
import '../../Widget/AppDataWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MovieScreen extends StatefulWidget {
  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  List<Movie> movieList1 = [];
  List<Movie> movieList2 = [];
  List<Movie> animationList1 = [];
  List<Movie> animationList2 = [];
  List<PageViewModel> pageViewList = [];
  List<Stars> starsList = [];
  int number;

  @override
  void initState() {
    super.initState();

    getMovie(1, movieList1);
    getMovie(2, movieList2);
    getAnimation(1, animationList1);
    getAnimation(2, animationList2);
    getPageViewModel();
    getStars();
  }


  @override
  Widget build(BuildContext context) {
    getMovie(1, movieList1);
    getMovie(2, movieList2);
    getAnimation(1, animationList1);
    getAnimation(2, animationList2);
    getPageViewModel();
    getStars();


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageViewMovieItem(
              list: pageViewList,
            ),
            movieList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowMovieItem(
                        label: 'جدیدترین فیلم ها',
                      ),
                      MovieScreen_ListView(list: movieList1),
                      AllRowMovieItem(
                        label: 'سانسور شده ها',
                      ),
                      MovieScreen_ListView(list: movieList2)
                    ],
                  )
                : Center(
                    child: CircleWidget(),
                  ),
            StarItem(starsList: starsList),
            animationList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowMovieItem(
                        label: 'جدیدترین کارتون ها',
                      ),
                      MovieScreen_ListView(list: animationList1),
                      AllRowMovieItem(
                        label: 'کارتون های دوبله شده',
                      ),
                      MovieScreen_ListView(list: animationList2)
                    ],
                  )
                : Center(
                    child: CircleWidget(),
                  ),
          ],
        ),
      ),
    );
  }

  getMovie(int number, List<Movie> list) async {
    var url = Uri.parse(AppUrl.url + 'movie$number');

    if (list.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(
              () {
                list.add(
                  Movie(
                    id: int.parse(data[i]['id']),
                    name: data[i]['name'],
                    image_url: data[i]['image_url'],
                    saleSakht: data[i]['saleSakht'],
                  ),
                );
              },
            );
          }
        }
      });
    }
  }

  getAnimation(int number, List<Movie> list) async {
    var url = Uri.parse(AppUrl.url + 'animation$number');

    if (list.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              list.add(
                Movie(
                  id: int.parse(data[i]['id']),
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

  getPageViewModel() async {
    var url = Uri.parse(AppUrl.url + 'pageviewmovie');

    if (pageViewList.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              pageViewList.add(
                PageViewModel(
                  id: int.parse(data[i]['id']),
                  name: data[i]['name'],
                  img_slide: data[i]['img_slide'],
                ),
              );
            });
          }
        }
      });
    }
  }

  getStars() async {
    var url = Uri.parse(AppUrl.url + 'stars');

    if (starsList.length == 0) {
      await http.get(url).then(
        (value) {
          if (value.statusCode == 200) {
            print(value.statusCode);
            List data = convert.jsonDecode(value.body);
            for (int i = 0; i < data.length; i++) {
              setState(
                () {
                  starsList.add(
                    Stars(
                      id: int.parse(data[i]['id']),
                      name: data[i]['name'],
                      pic: data[i]['pic'],
                    ),
                  );
                },
              );
            }
          }
        },
      );
    }
  }
}

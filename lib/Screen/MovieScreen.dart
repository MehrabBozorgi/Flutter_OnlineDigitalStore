import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Item/StarItem.dart';
import '../Model/Stars.dart';
import '../Item/AllRowItem.dart';
import '../Item/ListViewItem.dart';
import '../Item/PageView/Tools/PageViewMovieItem.dart';
import '../Model/Movie.dart';
import '../Model/PageViewModel.dart';
import '../Widgets/AppUrlWidget.dart';
import '../Widgets/ProgressBarWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'AllScreen.dart';

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

  get index => null;

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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllMovieScreen(),
                            ),
                          );
                        },
                        child: AllRowItem(
                          label: 'جدیدترین فیلم ها',
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 250,
                        child: ListViewItem(list: movieList1),
                      ),
                      AllRowItem(
                        label: 'سانسور شده ها',
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 250,
                        child: ListViewItem(list: movieList2),
                      ),
                    ],
                  )
                : Center(
                    child: ProgressBarWidget(),
                  ),
            SizedBox(height: 25),
            //
            //
            StarItem(starsList: starsList),
            //
            //
            animationList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowItem(
                        label: 'جدیدترین کارتون ها',
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 250,
                        child: ListViewItem(list: animationList1),
                      ),
                      AllRowItem(
                        label: 'کارتون های دوبله شده',
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 250,
                        child: ListViewItem(list: animationList2),
                      ),
                    ],
                  )
                : Center(
                    child: ProgressBarWidget(),
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
            setState(() {
              list.add(
                Movie(
                  id: int.parse(data[i]['id']),
                  name: data[i]['name'],
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
                  name: data[i]['name'],
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
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              starsList.add(
                Stars(
                  id: int.parse(data[i]['id']),
                  name: data[i]['name'],
                  pic: data[i]['pic'],
                ),
              );
            });
          }
        }
      });
    }
  }
}

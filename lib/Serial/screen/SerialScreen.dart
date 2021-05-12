import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Main/star/StarItem.dart';
import 'package:flutter_online_movie_shop/Model/Stars.dart';
import 'package:flutter_online_movie_shop/Main/PageView/PageViewMovieItem.dart';
import 'package:flutter_online_movie_shop/Model/Serial.dart';
import 'package:flutter_online_movie_shop/Serial/AllScreen/AllRowSerialScreenItem.dart';
import 'package:flutter_online_movie_shop/Serial/detail/item/SerialScreen_ListViewItem.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';
import '../../Model/PageView.dart';
import '../../Widget/AppDataWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SerialScreen extends StatefulWidget {
  @override
  _SerialScreen createState() => _SerialScreen();
}

class _SerialScreen extends State<SerialScreen> {
  List<Serial> serialList1 = [];
  List<Serial> serialList2 = [];

  List<Serial> collection1 = [];
  List<Serial> collection2 = [];
  List<PageViewModel> pageViewList = [];

  List<Stars> starsList = [];
  int number;

  @override
  Widget build(BuildContext context) {
    getSerial(1, serialList1);
    getSerial(2, serialList2);
    getcollection(1, collection1);
    getcollection(2, collection2);
    getPageViewModel();
    getStars();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageViewMovieItem(
              list: pageViewList,
            ),
            serialList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowSerialScreenItem(label: 'جدیدترین سریال ها'),
                      SerialScreen_ListViewItem(list: serialList1),
                      AllRowSerialScreenItem(label: 'سانسور شده ها'),
                      SerialScreen_ListViewItem(list: serialList2),
                    ],
                  )
                : Center(
                    child: CircleWidget(),
                  ),
            StarItem(starsList: starsList),
            serialList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowSerialScreenItem(label: 'سریال های ایرانی'),
                      SerialScreen_ListViewItem(list: collection1),
                      AllRowSerialScreenItem(label: 'تازه ها'),
                      SerialScreen_ListViewItem(list: collection2),
                    ],
                  )
                : Center(
                    child: CircleWidget(),
                  )
          ],
        ),
      ),
    );
  }

  getSerial(int number, List<Serial> list) async {
    var url = Uri.parse(AppUrl.url + 'serial$number');

    if (list.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              list.add(
                Serial(
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

  getcollection(int number, List<Serial> list) async {
    var url = Uri.parse(AppUrl.url + 'collection$number');

    if (list.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              list.add(
                Serial(
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
    var url = Uri.parse(AppUrl.url + 'pageviewserial');

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

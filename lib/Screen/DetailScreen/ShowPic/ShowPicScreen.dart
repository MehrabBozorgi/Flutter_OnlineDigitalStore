import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Item/Detail/ShowPicItem/ShowPicGridViewItem.dart';
import 'package:flutter_online_movie_shop/Model/Pic.dart';
import 'package:flutter_online_movie_shop/Widgets/AppUrlWidget.dart';
import 'package:flutter_online_movie_shop/Widgets/CircleWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ShowPicScreen extends StatefulWidget {
  int idM;

  ShowPicScreen(int idM) {
    this.idM = idM;
  }

  @override
  _ShowPicScreenState createState() => _ShowPicScreenState(idM);
}

class _ShowPicScreenState extends State<ShowPicScreen> {
  List<Pic> picList = [];

  @override
  Widget build(BuildContext context) {
    return picList.isNotEmpty
        ? Container(
            margin: EdgeInsets.only(top: 15),
            width: double.infinity,
            height: 200,
            child: ShowPicGridViewItem(picList: picList),
          )
        : CircleWidget();
  }

//
  _ShowPicScreenState(idM) {
    var url1 = Uri.parse(AppUrl.url + 'getMoviePics&product_id=$idM');

    http.get(url1).then(
      (value) {
        if (value.statusCode == 200) {
          List data = convert.jsonDecode(value.body);

          for (int i = 0; i < data.length; i++) {
            setState(
              () {
                picList.add(
                  Pic(
                    id: int.parse(data[i]['id']),
                    img: data[i]['img'],
                    product_id: int.parse(data[i]['product_id']),
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

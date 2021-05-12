import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Pic.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'ShowPicGridViewItem.dart';


class ShowPicScreenGame extends StatefulWidget {
  int idM;

  ShowPicScreenGame(int idM) {
    this.idM = idM;
  }

  @override
  _ShowPicScreenGameState createState() => _ShowPicScreenGameState(idM);
}

class _ShowPicScreenGameState extends State<ShowPicScreenGame> {
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
  _ShowPicScreenGameState(idM) {
    var url1 = Uri.parse(AppUrl.url + 'getGamePics&product_id=$idM');

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

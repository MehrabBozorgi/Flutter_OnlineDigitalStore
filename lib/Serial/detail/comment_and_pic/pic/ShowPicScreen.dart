import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Pic.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'ShowPicGridViewItem.dart';

class ShowPicScreenSerial extends StatefulWidget {
  int idM;

  ShowPicScreenSerial(int idM) {
    this.idM = idM;
  }

  @override
  _ShowPicScreenSerialState createState() => _ShowPicScreenSerialState(idM);
}

class _ShowPicScreenSerialState extends State<ShowPicScreenSerial> {
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
  _ShowPicScreenSerialState(idM) {
    var url1 = Uri.parse(AppUrl.url + 'getSerialPics&product_id=$idM');

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

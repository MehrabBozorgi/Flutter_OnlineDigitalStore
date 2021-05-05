import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_Desc.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_FirstPic.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_Info1.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_Info2.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_Info3.dart';
import 'package:flutter_online_movie_shop/Item/Detail/DetailPage_ShopButton.dart';
import 'package:flutter_online_movie_shop/Model/Movie.dart';
import 'package:flutter_online_movie_shop/Widgets/AppUrlWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../Const.dart';

class DetailScreen extends StatefulWidget {
  int idM;

  DetailScreen(int id) {
    idM = id;
  }

  @override
  _DetailScreenState createState() => _DetailScreenState(idM);
}

class _DetailScreenState extends State<DetailScreen> {
  List<Movie> list = [];

  int price = 0;
  int zaman = 0;
  String name = '';
  String description = '';
  String avamel = '';
  String forosh = '';
  String image_url = '';
  String keshvar = '';
  String saleSakht = '';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //اولین محصول
            DetailPage_FirstPic(image_url: image_url),

            //نام اثر و کشور سازنده
            DetailPage_Info1(name: name, keshvar: keshvar),

            //توضیحات
            DetailPage_Desc(description: description),

            //تاریخ و قیمت و مدت اثر
            DetailPage_Info2(saleSakht: saleSakht, zaman: zaman, price: price),

            //خلاصه ای از عوامل
            DetailPage_Info3(avamel: avamel),

            //دکمه خرید
            DetailPage_ShopButton(),
          ],
        ),
      ),
    );
  }
  _DetailScreenState(int idM) {
    var url = Uri.parse(AppUrl.url + 'getProductData&id=${idM.toString()}');

    http.get(url).then((value) {
      if (value.statusCode == 200) {
        dynamic data = convert.jsonDecode(value.body);
        setState(() {
          price = int.parse(data['price']);
          zaman = int.parse(data['zaman']);
          name = data['name'];
          description = data['description'];
          avamel = data['avamel'];
          forosh = data['forosh'];
          image_url = data['image_url'];
          keshvar = data['keshvar'];
          saleSakht = data['saleSakht'];
        });
      }
    });
  }
}

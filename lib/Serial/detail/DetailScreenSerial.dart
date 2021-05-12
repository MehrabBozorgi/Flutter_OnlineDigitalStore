import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Main/Cart/Cart.dart';
import 'package:flutter_online_movie_shop/Main/detail/DetailPage_Desc.dart';
import 'package:flutter_online_movie_shop/Main/detail/DetailPage_Info1.dart';
import 'package:flutter_online_movie_shop/Movie/DetailPage_Info1.dart';
import 'package:flutter_online_movie_shop/Movie/comment_and_pic/comment/AddCommentScreen.dart';
import 'package:flutter_online_movie_shop/Main/detail/DetailPage_FirstPic.dart';
import 'package:flutter_online_movie_shop/Main/detail/DetailPage_Info3.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';
import 'package:flutter_online_movie_shop/Widget/ShopButton.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../Const.dart';
import '../../Main/Cart/CartScreen.dart';
import 'comment_and_pic/TabBar_Pic_And_Comment.dart';
import 'item/DetailPage_Serial_Info2.dart';

class DetailScreenSerial extends StatefulWidget {
  int idM;
  String kind;

  DetailScreenSerial(int id) {
    idM = id;
  }

  @override
  _DetailScreenSerialState createState() => _DetailScreenSerialState();
}

class _DetailScreenSerialState extends State<DetailScreenSerial> {
  List<dynamic> list = [];

  int price = 0;
  int zaman = 0;
  int fasl = 0;
  String name = '';
  String description = '';
  String avamel = '';
  String image_url = '';
  String keshvar = '';
  String saleSakht = '';

  @override
  Widget build(BuildContext context) {
    getSerial(widget.idM);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.add_comment),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCommentScreen(widget.idM, name),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: name.isNotEmpty
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      //اولین محصول
                      DetailPage_FirstPic(image_url: image_url),

                      //نام اثر و کشور سازنده
                      DetailPage_Info1(name: name, keshvar: keshvar),

                      //توضیحات
                      DetailPage_Desc(description: description),

                      //تاریخ و قیمت و مدت اثر
                      DetailPage_Serial_Info2(
                          zaman: zaman, price: price, saleSakht: saleSakht),


                      //خلاصه ای از عوامل
                      DetailPage_Info3(avamel: avamel),

                      //دکمه خرید
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: ShopButton(
                          text: 'افزودن به سبد خرید',
                          icon: Icons.shopping_cart,
                          onTap: () {
                            buttonSheetItem(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 15,
                      left: 15,
                      bottom: 30,
                    ),
                    height: 400,
                    width: double.infinity,
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar_Pic_And_CommentSerial(widget.idM),
                    ),
                  ),
                ],
              ),
            )
          : CircleWidget(),
    );
  }

  Widget buttonSheetItem(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 350,
          width: 200,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Card(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: NetworkImage(image_url),
                      width: 200,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  name,
                  style: kHomeTitleName,
                ),
              ),
              ShopButton(
                icon: Icons.done_outline_rounded,
                text: 'نهایی کردن محصول',
                onTap: () {
                  Cart.add_product_cart(widget.idM.toString(), name,
                          int.parse(price.toString()), image_url)
                      .then(
                    (response) {
                      if (response) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  getSerial(int idM) async {
    var url1 = Uri.parse(AppUrl.url + 'getSerialData&id=${idM.toString()}');

    await http.get(url1).then((value) {
      if (value.statusCode == 200) {
        dynamic data = convert.jsonDecode(value.body);
        setState(() {
          price = int.parse(data['price']);
          zaman = int.parse(data['zaman']);
          fasl = int.parse(data['fasl']);
          name = data['name'];
          description = data['description'];
          avamel = data['avamel'];
          image_url = data['image_url'];
          keshvar = data['keshvar'];
          saleSakht = data['saleSakht'];
        });
      }
    });
  }
}



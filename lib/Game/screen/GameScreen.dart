import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Game/AllScreen/AllRowScreenGameItem.dart';
import 'package:flutter_online_movie_shop/Model/Game.dart';
import 'package:flutter_online_movie_shop/Model/PageView.dart';
import 'package:flutter_online_movie_shop/Model/Stars.dart';
import 'package:flutter_online_movie_shop/Main/PageView/PageViewMovieItem.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:flutter_online_movie_shop/Widget/CircleWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../detail/item/GameScreen_ListViewItem.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreen createState() => _GameScreen();
}

class _GameScreen extends State<GameScreen> {
  List<Game> gameList1 = [];
  List<Game> gameList2 = [];

  // List<Serial> collection1 = [];
  // List<Serial> collection2 = [];
  List<PageViewModel> pageViewList = [];
  List<Stars> starsList = [];

  int number;

  get index => null;

  @override
  Widget build(BuildContext context) {
    getGame(1, gameList1);
    getGame(2, gameList2);
    // getcollection(1, collection1);
    // getcollection(2, collection2);
    getPageViewModel();
    // getStars();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PageViewMovieItem(
              list: pageViewList,
            ),
            gameList1.isNotEmpty
                ? Column(
                    children: [
                      AllRowScreenGameItem(label: 'جدیدترین سریال ها'),
                      GameScreen_ListViewItem(list: gameList1),
                      AllRowScreenGameItem(label: 'سانسور شده ها'),
                      GameScreen_ListViewItem(list: gameList2),
                    ],
                  )
                : Center(
                    child: CircleWidget(),
                  ),
            // StarItem(starsList: starsList),
            // gameList2.isNotEmpty
            //     ? Column(
            //         children: [
            //           AllRowSerialItem(label: 'سریال های ایرانی'),
            //           SerialScreen_ListViewItem(list: gameList1),
            //           AllRowSerialItem(
            //             label: 'تازه ها',
            //           ),
            //           SerialScreen_ListViewItem(list: gameList2),
            //         ],
            //       )
            //     : Center(
            //         child: CircleWidget(),
            //       )
          ],
        ),
      ),
    );
  }

  getGame(int number, List<Game> list) async {
    var url = Uri.parse(AppUrl.url + 'game$number');

    if (list.length == 0) {
      await http.get(url).then((value) {
        if (value.statusCode == 200) {
          print(value.statusCode);
          List data = convert.jsonDecode(value.body);
          for (int i = 0; i < data.length; i++) {
            setState(() {
              list.add(
                Game(
                  id: int.parse(data[i]['id']),
                  hajm: int.parse(data[i]['hajm']),
                  price: int.parse(data[i]['price']),
                  name: data[i]['name'],
                  description: data[i]['description'],
                  saleSakht: data[i]['saleSakht'],
                  image_url: data[i]['image_url'],
                  avamel: data[i]['avamel'],
                ),
              );
            });
          }
        }
      });
    }
  }

  // getcollection(int number, List<Serial> list) async {
  //   var url = Uri.parse(AppUrl.url + 'collection$number');
  //
  //   if (list.length == 0) {
  //     await http.get(url).then((value) {
  //       if (value.statusCode == 200) {
  //         print(value.statusCode);
  //         List data = convert.jsonDecode(value.body);
  //         for (int i = 0; i < data.length; i++) {
  //           setState(() {
  //             list.add(
  //               Serial(
  //                 id: int.parse(data[i]['id']),
  //                 name: data[i]['name'],
  //                 image_url: data[i]['image_url'],
  //                 saleSakht: data[i]['saleSakht'],
  //               ),
  //             );
  //           });
  //         }
  //       }
  //     });
  //   }
  // }

  getPageViewModel() async {
    var url = Uri.parse(AppUrl.url + 'pageviewgame');

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

// getStars() async {
//   var url = Uri.parse(AppUrl.url + 'stars');
//
//   if (starsList.length == 0) {
//     await http.get(url).then(
//       (value) {
//         if (value.statusCode == 200) {
//           print(value.statusCode);
//           List data = convert.jsonDecode(value.body);
//           for (int i = 0; i < data.length; i++) {
//             setState(
//               () {
//                 starsList.add(
//                   Stars(
//                     id: int.parse(data[i]['id']),
//                     name: data[i]['name'],
//                     pic: data[i]['pic'],
//                   ),
//                 );
//               },
//             );
//           }
//         }
//       },
//     );
//   }
// }
}

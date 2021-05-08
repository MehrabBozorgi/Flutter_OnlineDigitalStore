import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Comment.dart';
import 'package:flutter_online_movie_shop/Widgets/AppUrlWidget.dart';
import 'package:flutter_online_movie_shop/Widgets/CircleWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../Const.dart';

class ShowCommentScreen extends StatefulWidget {
  int idM;

  ShowCommentScreen(int idM) {
    this.idM = idM;
  }

  @override
  _ShowCommentScreenState createState() => _ShowCommentScreenState(idM);
}

class _ShowCommentScreenState extends State<ShowCommentScreen> {
  List<Comment> commentList = [];

  _ShowCommentScreenState(idM) {
    var url = Uri.parse(
        AppUrl.url+'get_comment&comment_id=${idM}');

    http.get(url).then(
      (value) {
        if (value.statusCode == 200) {
          List data = convert.jsonDecode(value.body);

          for (int i = 0; i < data.length; i++) {
            setState(
              () {
                commentList.add(
                  Comment(
                    id: int.parse(data[i]['id']),
                    comment_id: int.parse(data[i]['comment_id']),
                    username: data[i]['username'],
                    content: data[i]['content'],
                    time: data[i]['time'],
                  ),
                );
              },
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      commentList.isNotEmpty ?  Column(
        children: [
          Stack(children: [
            Opacity(
              opacity: 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'g.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 5, left: 5),
              width: double.infinity,
              height: 300,
              child: ListView.builder(
                itemCount: commentList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    // decoration: BoxDecoration(
                    //  // border: Border.all(color: Color(0xFF92E348), width: 1),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                child: Text(
                                  commentList[index].username,
                                  textAlign: TextAlign.right,
                                  style: kHomeTitleName,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 175,
                                child: Text(
                                  commentList[index].time,
                                  textAlign: TextAlign.left,
                                  style: kAllScreenExpansionTitleText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(right: 15, left: 15, top: 10),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            commentList[index].content,
                            style: kAllNewRowText,
                          ),
                        ),
                        Divider(
                            color: Color(0xFF92E348),
                            endIndent: 40,
                            indent: 40,
                            thickness: 1),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ],
      ):CircleWidget(),
    );
  }
}

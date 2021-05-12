import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Movie/comment_and_pic/comment/ShowCommentScreen.dart';
import '../../../Const.dart';
import 'pic/ShowPicScreenGame.dart';

class TabBar_Pic_And_CommentGame extends StatelessWidget {
  int idM;

  TabBar_Pic_And_CommentGame(int idM) {
    this.idM = idM;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        labelStyle: kDrawerText,
        labelColor: Color(0xFF92E348),
        indicatorColor: Color(0xFF92E348),
        unselectedLabelStyle: kAllScreenDescText,
        unselectedLabelColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(Icons.comment, color: Colors.white),
            text: 'نظرات',
          ),
          Tab(
            icon: Icon(Icons.photo_album, color: Colors.white),
            text: 'گالری تصاویر',
          ),
        ],
      ),
      body: TabBarView(
        children: [
          ShowCommentScreen(idM),
          ShowPicScreenGame(idM),
        ],
      ),
    );
  }
}

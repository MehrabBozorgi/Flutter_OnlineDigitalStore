import 'package:flutter/material.dart';
import '../../Const.dart';
class DetailPage_Info3 extends StatelessWidget {
  const DetailPage_Info3({
    Key key,
    @required this.avamel,
  }) : super(key: key);

  final String avamel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, right: 10, left: 10, top: 5),
      child: ExpansionTile(
        backgroundColor: Colors.black45,
        title: Text(
          'خلاصه',
          style: kStarStar,
        ),
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 30),
            child: Text(
              avamel,
              style: kAllScreenDescText,
            ),
          ),
        ],
      ),
    );
  }
}
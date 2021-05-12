import 'package:flutter/material.dart';
import '../../../Const.dart';

class GameScreen_ListViewView extends StatelessWidget {

  const GameScreen_ListViewView({@required this.list, this.index});

  final List list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0xFF2E3338),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Card(
            elevation: 10,
            shadowColor: Colors.black,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage(
                  list[index].image_url,
                ),
                height: 140,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 45,
            width: 110,
            child: Text(
              list[index].name,
              style: kHomeTitleName,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: 100,
            alignment: Alignment.centerRight,
            child: Text(
              'سال : ' + list[index].saleSakht,
              style: kHomeSaleSakht,
            ),
          ),
        ],
      ),
    );
  }
}
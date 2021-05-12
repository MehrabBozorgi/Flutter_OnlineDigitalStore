import 'package:flutter/material.dart';

import '../../Const.dart';


class DetailPageGame_Info1 extends StatelessWidget {
  const DetailPageGame_Info1({
    @required this.name,
    @required this.hajm,
  });

  final String name;
  final int hajm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          decoration: DetailPage_Info1_decor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'نام اثر : ',
                    style: kHomeTitle1,
                  ),
                  Text(
                    name,
                    style: kStarStar,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          margin: EdgeInsets.only(right: 10, left: 10,bottom: 20),
          decoration: DetailPage_Info1_2_decor,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'حجم بازی : ',
                style: kHomeTitle1,
              ),
              Text(
                '  Gb ',
                style: kHomeTitle1,
              ),
              Text(
                hajm.toString(),
                style: kHomeTitle,
              ),

            ],
          ),
        ),
      ],
    );
  }
}

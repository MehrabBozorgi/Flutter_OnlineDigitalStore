import 'package:flutter/material.dart';

import '../Const.dart';



class DetailPage_Info1 extends StatelessWidget {
  const DetailPage_Info1({
    @required this.name,
    @required this.keshvar,
  });

  final String name;
  final String keshvar;

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
                'کشور سازنده : ',
                style: kHomeTitle1,
              ),
              Text(
                keshvar.toString(),
                style: kHomeTitle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

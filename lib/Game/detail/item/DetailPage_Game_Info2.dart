import 'package:flutter/material.dart';

import '../../../Const.dart';

class DetailPage_Game_Info2 extends StatelessWidget {
  final String saleSakht;

  final int price;

  const DetailPage_Game_Info2({
    @required this.saleSakht,

    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    'تاریخ ساخت : ',
                    style: kHomeTitle1,
                  ),
                  Text(
                    saleSakht,
                    style: kStarStar,
                  ),
                ],
              ),

            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          margin: EdgeInsets.only(right: 10, left: 10, bottom: 20),
          decoration: DetailPage_Info1_2_decor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'قیمت  :  ',
                style: kHomeTitle1,
              ),
              Text(
                  '\$ '+ price.toString(),
                style: kHomeTitle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
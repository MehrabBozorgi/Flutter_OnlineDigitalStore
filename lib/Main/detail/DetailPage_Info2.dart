import 'package:flutter/material.dart';

import '../../Const.dart';


class DetailPage_Info2 extends StatelessWidget {
  const DetailPage_Info2({

    @required this.saleSakht,
    @required this.zaman,
    @required this.price,
  }) ;

  final String saleSakht;
  final int zaman;
  final int price;

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 10),
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
              Row(
                children: [
                  Text(
                    'مدت : ',
                    style: kHomeTitle1,
                  ),
                  Text(
                    zaman.toString(),
                    style: kStarStar,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          margin: EdgeInsets.only(right: 10, left: 10,bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xFF92E348),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'قیمت : ',
                style: kHomeTitle1,
              ),
              Text(
                price.toString()+',000'+' تومان  ',
                style: kHomeTitle,
              ),
            ],
          ),

        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import '../../Const.dart';

class TotalProductPriceItem extends StatelessWidget {
  const TotalProductPriceItem({@required this.price2});

  final String price2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: CartRowItem_Decoration,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'جمع دوره ها',
              textAlign: TextAlign.right,
              style: kDrawerText1,
            ),
          ),
          Expanded(
            child: Text(
              price2 + ',000' + ' تومان',
              textAlign: TextAlign.left,
              style: kPriceText,
            ),
          ),
        ],
      ),
    );
  }
}
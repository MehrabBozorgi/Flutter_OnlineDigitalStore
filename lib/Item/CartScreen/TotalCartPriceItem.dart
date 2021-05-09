import 'package:flutter/material.dart';

import '../../Const.dart';

class TotalCartPriceItem extends StatelessWidget {
  TotalCartPriceItem({@required this.cartPrice});

  final int cartPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: CartRowItem_Decoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'جمع کل',
            textAlign: TextAlign.right,
            style: kAllRowText,
          ),
          Text(
            cartPrice.toString() + ',000' + ' تومان ',
            textAlign: TextAlign.left,
            style: TextStyle(fontFamily: 'bold', fontSize: 16),
          ),
        ],
      ),
    );
  }
}
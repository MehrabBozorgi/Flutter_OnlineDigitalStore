import 'package:flutter/material.dart';
import '../../../Const.dart';

class ProductPriceItem extends StatelessWidget {
  const ProductPriceItem({@required this.price});

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartRowItem_Decoration,
      margin: EdgeInsets.only(right: 10, left: 10, top: 10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'قیمت دوره',
              textAlign: TextAlign.right,
              style: kDrawerText1,
            ),
          ),
          Expanded(
            child: Text(price + ',000' + ' تومان',
                textAlign: TextAlign.left, style: kHomeTitle),
          ),
        ],
      ),
    );
  }
}
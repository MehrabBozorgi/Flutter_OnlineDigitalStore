import 'package:flutter/material.dart';

import '../../../Const.dart';

class DeleteProductViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Text(
            ' حذف محصول',
            style: kDeleteText,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Center(
          child: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
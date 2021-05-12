import 'package:flutter/material.dart';

import '../../Const.dart';

class DetailPage_Desc extends StatelessWidget {
  const DetailPage_Desc({
    Key key,
    @required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Text(
        description,
        style: kAllScreenExpansionTitleText,
      ),
    );
  }
}
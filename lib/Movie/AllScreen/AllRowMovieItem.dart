import 'package:flutter/material.dart';
import '../../Const.dart';
import 'AllMovieScreen.dart';

class AllRowMovieItem extends StatelessWidget {
  final String label;

  const AllRowMovieItem({@required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AllMovieScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: kAllNewRowText,
            ),
            Text('همه  >', style: kAllRowText)
          ],
        ),
      ),
    );
  }
}

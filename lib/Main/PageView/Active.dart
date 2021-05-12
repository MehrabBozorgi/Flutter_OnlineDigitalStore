import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF92E348),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 10,
      height: 10,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Center(
          child: SpinKitWave(
        color: Color(0xFF92E348),
        size: 30.0,
      )),
    );
  }
}

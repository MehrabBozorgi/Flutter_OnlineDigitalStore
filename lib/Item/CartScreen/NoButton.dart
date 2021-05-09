import 'package:flutter/material.dart';

class NoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'خیر',
        style: TextStyle(color: Colors.black, fontFamily: 'title'),
      ),
    );
  }
}
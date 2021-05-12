import 'package:flutter/material.dart';

class ShopButton extends StatelessWidget {
final String text;
final IconData icon;
final Function onTap;

  const ShopButton({@required this.text,@required this.icon,@required this.onTap}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(

        width: MediaQuery.of(context).size.width - 80,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF92E348),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon
              ,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                wordSpacing: -1,
                letterSpacing: -2,
                fontFamily: 'title',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
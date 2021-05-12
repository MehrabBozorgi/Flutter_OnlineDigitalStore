import 'package:flutter/material.dart';

class DetailPage_FirstPic extends StatelessWidget {
  const DetailPage_FirstPic({

    @required this.image_url,
  });

  final String image_url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(50),
        bottomLeft: Radius.circular(50),
      ),
      child: Image(
        image: NetworkImage(image_url),
        fit: BoxFit.cover,
        height: 300,
        width: double.infinity,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Movie/detail/DetailScreenMovie.dart';

import 'MovieScreenListViewView.dart';

class MovieScreen_ListView extends StatelessWidget {
  final List<dynamic> list;

  const MovieScreen_ListView({
    this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreenMovie(list[index].id),
                ),
              );
            },
            child: MovieScreenListViewView(list: list, index: index),
          );
        },
      ),
    );
  }
}

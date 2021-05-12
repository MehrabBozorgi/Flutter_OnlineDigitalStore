import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Model/Stars.dart';

class StarItem extends StatelessWidget {
  const StarItem({@required this.starsList});

  final List<Stars> starsList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(top: 25),
          width: double.infinity,
          child: Text(
            'ستارگان',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'bold',
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: starsList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: NetworkImage(
                            starsList[index].pic,
                          ),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    starsList[index].name,
                    style: TextStyle(
                      fontFamily: 'title',
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

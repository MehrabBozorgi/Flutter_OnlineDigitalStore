import 'package:flutter/material.dart';
import '../../Const.dart';


class AllScreenMovieItem extends StatelessWidget {

  final List<dynamic> list;
  final int index;
  const AllScreenMovieItem({ @required this.list,this.index,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 25,
      ),
      width: MediaQuery.of(context).size.width - 150,
      height: 250,
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 20,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage(list[index].image_url),
                height: 120,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 10,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      list[index].name,
                      style: kSelectedTextTabView,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('قیمت  :  ', style: kHomeTitle1),
                        Text(
                          list[index].price.toString() + ',000',
                          style: kUnSelectedTextTabView,
                        ),
                        Text(' تومان', style: kHomeTitle1),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text('زمان ساخت : ', style: kHomeTitle1),
                            Text(
                              list[index].zaman.toString(),
                              style: kUnSelectedTextTabView,
                            ),
                            Text(' دقیقه', style: kHomeTitle1),
                          ],
                        ),
                        SizedBox(width: 40),
                        Row(
                          children: [
                            Text('ساخته کشور : ', style: kHomeTitle1),
                            Text(
                              list[index].keshvar.toString(),
                              style: kUnSelectedTextTabView,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

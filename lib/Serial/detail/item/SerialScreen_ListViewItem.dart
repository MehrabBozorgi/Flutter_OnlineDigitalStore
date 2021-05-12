import 'package:flutter/material.dart';
import '../DetailScreenSerial.dart';
import 'SerialScreen_ListViewView.dart';

class SerialScreen_ListViewItem extends StatelessWidget {
  final List<dynamic> list;

  const SerialScreen_ListViewItem({@required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreenSerial(list[index].id),
              ),
            );
          },child: SerialScreen_ListViewView(list: list, index: index));
        },
      ),
    );
  }
}

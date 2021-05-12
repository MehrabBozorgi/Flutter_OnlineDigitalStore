import 'package:flutter/material.dart';


class ShowPicGridViewItem extends StatelessWidget {
  const ShowPicGridViewItem({
    @required this.picList,
  });

  final List<dynamic> picList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'g.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          ),
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.4,
          ),
          itemCount: picList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: Colors.black,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: picList[index].img.isNotEmpty
                      ? NetworkImage(picList[index].img)
                      : NetworkImage(
                          'https://i.pinimg.com/736x/62/df/ed/62dfed9c4df6bbcbd5e4cb6cc35cbdb6.jpg'),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

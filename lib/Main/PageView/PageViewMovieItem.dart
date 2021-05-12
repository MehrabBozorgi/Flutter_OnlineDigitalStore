import 'package:flutter/material.dart';
import '../../Const.dart';
import 'InActive.dart';
import 'Active.dart';

class PageViewMovieItem extends StatefulWidget {
  final List<dynamic> list;

  const PageViewMovieItem({this.list});

  @override
  _PageViewMovieItemState createState() => _PageViewMovieItemState();
}

class _PageViewMovieItemState extends State<PageViewMovieItem> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      child: PageView.builder(
        onPageChanged: (position) {
          setState(
            () {
              tabIndex = position;
            },
          );
        },
        itemCount: widget.list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                          Colors.transparent,
                        ],
                      ).createShader(Rect.fromLTRB(50, -200, 50, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image(
                      image: NetworkImage(widget.list[index].img_slide),
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 10,
                    child: Text(
                      widget.list[index].name,
                      style: kPageViewName,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 40,
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                          ),
                          Text(
                            'مشاهده از سایت',
                            style: kPageViewButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: footer(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  footer() {
    List<Widget> sliderItem = [];

    for (int i = 0; i < widget.list.length; i++) {
      i == tabIndex
          ? sliderItem.add(
              Active(),
            )
          : sliderItem.add(
              InActive(),
            );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: sliderItem,
    );
  }
}

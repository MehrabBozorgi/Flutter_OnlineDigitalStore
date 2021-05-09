import 'package:flutter/material.dart';
import '../Const.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> _opacityAnim;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _opacityAnim = Tween<double>(begin: 0, end: 1).animate(controller);
    controller.forward();
    goToScreen();
  }

  goToScreen() {
    _opacityAnim.addStatusListener((status) async {
      if (status == AnimationStatus.completed && status != null) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Center(
              child: Opacity(
                opacity: _opacityAnim.value,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Image.asset(
                        'splash.png',
                        width: 250,
                        height: 250,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Developed by :',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' Mehrab Bozorgi',
                            style: TextStyle(
                                color: Colors.blue, fontFamily: 'bold', fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        'newlogo.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

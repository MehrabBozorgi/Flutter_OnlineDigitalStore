import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Main/SplashScreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fa'), // Farsi
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF2E3338),
        primaryColor: Color(0xFF2E3338),
        canvasColor: Color(0xFF2E3338),
        cardColor: Color(0xFF2E3338),
        // buttonColor: Color(0xFF92E348)
      ),
      home: SplashScreen(),
    );
  }
}

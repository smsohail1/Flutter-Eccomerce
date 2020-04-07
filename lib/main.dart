import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'LoginActivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xffed1a37),
        accentColor: Color(0xffed1a37),
      ),
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/loginactivity': (BuildContext context) => new LoginActivity()
      },
    );
  }
}


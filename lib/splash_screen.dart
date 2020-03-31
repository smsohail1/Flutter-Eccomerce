import 'package:flutter/material.dart';
import 'dart:async';
import 'loginactivity.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginActivity())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/images/logo_solution_experts.png',
              width: 100.0,
              height: 100.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 25.0),
                alignment: Alignment.bottomCenter,
                child: Text("POWERED BY",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9.0,)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 25.0),
                alignment: Alignment.bottomCenter,
                child: Text("Solutions Experts Ltd.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

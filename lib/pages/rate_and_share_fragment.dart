import 'package:flutter/material.dart';

class RateAndShareFragment extends StatefulWidget {
  @override
  _RateAndShareFragmentState createState() => _RateAndShareFragmentState();
}

class _RateAndShareFragmentState extends State<RateAndShareFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/logo_solution_experts.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),

                child: Text(
                  'The hero image gradually transitions between several large, vibrant images that grab your attention without being too distracting, then as you scroll, it lists a few basic facts about the company, as well as some impressive real-time stats showcasing the popularity of their community',
                  style: TextStyle(color: Colors.black, fontSize: 15),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

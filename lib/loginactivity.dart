import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'signup_activity.dart';
import 'pages/Home.dart';

class LoginActivity extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginActivity> {
  String email = '';
  String password = '';
  bool showSpinner = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isTermsChecked = false;

  @override
  void initState() {
    super.initState();
  }

  void signIn(String username, pass) async {
//    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': username, 'password': pass};
    var jsonResponse;
    var response = await http.post(
        "http://demo.branex.ca/forexed/wp-json/jwt-auth/v1/token",
        body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
//        setState(() {
//          showSpinner = false;
//        });
        //sharedPreferences.setString("token", jsonResponse['token']);
        print('Token: ' + jsonResponse['token']);
        _showDialog('sucess', jsonResponse['token']);
        //  Navigator.of(context).pushReplacementNamed(HomeScreen.id);
      }
    } else if (response.statusCode == 403) {
//      setState(() {
//        showSpinner = false;
//      });
      _showDialog("Error", "Invalid Username or Password");
    } else {
//      setState(() {
//        showSpinner = false;
//      });
//      print(response.body);

    }
  }

  void _showDialog(String dialogTitle, String dialogText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(dialogTitle),
          content: new Text(dialogText),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/logo_solution_experts.png',
                  width: 130.0,
                  height: 130.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 13.0,
                    ),
                    controller: _emailController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintText: "Email address",
                        hintStyle: new TextStyle(
                          color: Colors.grey[800],
                          fontSize: 13.0,
                        ),
                        fillColor: Colors.white70),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 4.0),
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 13.0,
                    ),
                    controller: _passwordController,
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintText: "Password",
                        hintStyle: new TextStyle(
                          color: Colors.grey[800],
                          fontSize: 13.0,
                        ),
                        fillColor: Colors.white70),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                    child: SizedBox(
                        width: double.infinity,
                        height: 45.0,
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text("Sign In"),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
//                            if (_emailController.text == "" ||
//                                _passwordController.text == "") {
//                              _showDialog('Error',
//                                  'Please enter both Username and Password');
//                            } else {
//                              signIn(_emailController.text,
//                                  _passwordController.text);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                          //  }
                          },
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                      child: Text(
                        "Can't sign in?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5.0, 20.0, 0, 4.0),
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                  child: Text("OR"),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                    child: SizedBox(
                        height: 45.0,
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text("Create New Account",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            registerClick();
                          },
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void registerClick() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SignUpActivity()),
      );
    });
  }
}

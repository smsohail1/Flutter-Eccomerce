import 'package:flutter/material.dart';

class SignUpActivity extends StatefulWidget {
  @override
  _SignUpActivityState createState() => _SignUpActivityState();
}

class _SignUpActivityState extends State<SignUpActivity> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, 0, 0.0),
                  child: Image.asset(
                    'assets/images/logo_solution_experts.png',
                    width: 130.0,
                    height: 130.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 0, 4.0),
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 13.0,
                    ),
                    controller: _nameController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintText: "Name",
                        hintStyle: new TextStyle(
                          color: Colors.grey[800],
                          fontSize: 13.0,
                        ),
                        fillColor: Colors.white70),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 0, 4.0),
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
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 0, 4.0),
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 13.0,
                    ),
                    controller: _passwordController,
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
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 0, 4.0),
                  child: TextField(
                    style: new TextStyle(
                      fontSize: 13.0,
                    ),
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintText: "Confirm Password",
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
                          child: Text("Sign up"),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                          ),
                          onPressed: () {},
                        ))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 4.0),
                      child: Text(
                        "Already have and account?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(5.0, 20.0, 0, 4.0),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//class SignUp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: new Container(
//        child: Text("dsdd"),
//      ),
//    );
//  }
//}

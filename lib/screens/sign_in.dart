import 'package:admin_panel/screens/home.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        leading: FlatButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.lightBlueAccent,
          ),
          onPressed: () {
            Navigator.pushNamed(context, "register");
          },
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Log in',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Hi,",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: "Welcome back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.lightBlueAccent)),
                  ]),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Please sign in to continue",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 60,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: TextFormField(
                          validator: (val) =>
                              val.isEmpty ? "Please enter your email" : null,
                          decoration: InputDecoration(
                              hintText: "Enter your name",
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(30),
                        child: TextFormField(
                          obscureText: true,
                          validator: (val) =>
                              val.length < 6 ? "Please enter +6 chars" : null,
                          decoration: InputDecoration(
                              hintText: "Enter your password",
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.lightBlueAccent,
                        child: FlatButton.icon(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                Navigator.pushNamed(context, "home");
                              } else {
                                print("Please enter a validate email");
                              }
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Log in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: "Sign Up",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

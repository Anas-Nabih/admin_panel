import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white38,
        leading: FlatButton(
          child: Icon(Icons.arrow_back,color: Colors.lightBlueAccent),
          onPressed: (){
            Navigator.pushNamed(context, "sign_in");
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Hi,",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  TextSpan(
                      text: "Welcome! \n",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                  TextSpan(
                      text: "Please sig up to continue",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ])),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: _formKey,
                    child: Column(
                  children: [
                    Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        validator: (val) => val.isEmpty ? "Please enter your full name" : null,
                        decoration: InputDecoration(
                            hintText: "Full Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        validator: (val) => val.isEmpty ? "Please enter your user name" : null,
                        decoration: InputDecoration(
                            hintText: "User Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        validator: (val) => val.isEmpty ? "Please enter your email" : null,
                        decoration: InputDecoration(
                            hintText: "Email",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        validator: (val) => val.length <6 ? "Please enter 6+ chars password" : null,
                        decoration: InputDecoration(
                            hintText: "Password",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Material(
                      elevation: 15,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        validator: (val) => val.length <6 ? "Please enter 6+ chars password" : null,
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
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
                          color: Colors.lightBlueAccent,
                          onPressed: () {
                            if(_formKey.currentState.validate())
                              {
                                Navigator.pushNamed(context, "home");
                              }
                            else{
                              print("Please complete your information");
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                )),
                SizedBox(
                  height: 14,
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
                        text: "Sign up",
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500))
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
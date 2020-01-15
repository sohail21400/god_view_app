import 'package:flutter/material.dart';
import 'package:god_view/constants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: 80),
                Text(
                  'TRASHY',
                  style: TextStyle(
                      letterSpacing: 35, fontSize: 24, color: Colors.black45),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 400,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black26)
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: headingTwo,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "user name",
                          style: headingFive,
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: boxDecorationStyle,
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          "password",
                          style: headingFive,
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: boxDecorationStyle,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "ReemKulfi",
                                  )),
                              FlatButton(
                                child: Text("Create one",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "ReemKulfi",
                                    )),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
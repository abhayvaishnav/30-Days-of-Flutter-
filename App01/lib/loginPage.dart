import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './signUpPage.dart';
import 'landingpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

FocusNode myFocusNode = new FocusNode();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),
                ),
              );
            },
          );
        }),
        backgroundColor: Color.fromARGB(255, 54, 58, 70),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 80, left: 40, right: 40),
        color: Color.fromARGB(255, 54, 58, 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Text("Log In",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: myFocusNode.hasFocus
                        ? Colors.white
                        : Color.fromARGB(255, 247, 172, 27),
                  ),
                  icon: Icon(Icons.person, color: Colors.white),
                  labelText: 'Enter your username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.white),
                  labelStyle: TextStyle(
                    color: myFocusNode.hasFocus
                        ? Colors.white
                        : Color.fromARGB(255, 247, 172, 27),
                  ),
                  labelText: 'Enter your password',
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 60,
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black26,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {},
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign Up Here!",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

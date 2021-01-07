import 'package:flutter/material.dart';
import './landingpage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

FocusNode myFocusNode = new FocusNode();

class _SignUpPageState extends State<SignUpPage> {
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
        padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
        color: Color.fromARGB(255, 54, 58, 70),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("Account",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("1/2",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("Steps",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      )
                    ])),
            Container(
              padding: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 6.0,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 54, 58, 70),
                      radius: 34,
                      child: Icon(Icons.link),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Upload a profile picture",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.white
                            : Color.fromARGB(255, 247, 172, 27),
                      ),
                      labelText: 'Name ',
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.white
                            : Color.fromARGB(255, 247, 172, 27),
                      ),
                      labelText: 'Username',
                    ),
                  ),
                ],
              ),
            ),
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
                    "Next",
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
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './landingpage.dart';

void main() => runApp(MaterialApp(
      home: DAYONE(),
      debugShowCheckedModeBanner: false,
    ));

class DAYONE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: LandingPage(),
      body: LandingPage(),
    );
  }
}

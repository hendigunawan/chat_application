import 'package:flutter/material.dart';
import 'conten/body.dart';

class Welcome extends StatelessWidget {
  static String routeNamed = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      body: Body(),
    );
  }
}

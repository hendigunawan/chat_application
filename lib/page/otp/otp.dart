import 'package:flutter/material.dart';
import 'conten/body.dart';

class Otp extends StatelessWidget {
  static String routeNamed = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      body: Body(),
    );
  }
}

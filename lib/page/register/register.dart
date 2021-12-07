import 'package:flutter/material.dart';
import 'conten/body.dart';

class Register extends StatelessWidget {
  static String routeNamed = "/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      body: Body(),
    );
  }
}

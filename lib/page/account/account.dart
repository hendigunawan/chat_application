import 'package:flutter/material.dart';
import 'conten/body.dart';

class Account extends StatelessWidget {
  static String routeNamed = "/account";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      body: Body(),
    );
  }
}

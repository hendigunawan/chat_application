import 'package:flutter/material.dart';
import 'page/welcome/welcome.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OTP Verification',
      debugShowCheckedModeBanner: false,
      // home: Welcome(),
      initialRoute: Welcome.routeNamed,
      routes: routes,
    );
  }
}

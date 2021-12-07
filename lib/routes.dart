import 'package:flutter/widgets.dart';
import 'package:chat_application/page/welcome/welcome.dart';
import 'package:chat_application/page/register/register.dart';
import 'package:chat_application/page/otp/otp.dart';
import 'package:chat_application/page/account/account.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeNamed: (context) => Welcome(),
  Register.routeNamed: (context) => Register(),
  Otp.routeNamed: (context) => Otp(),
  Account.routeNamed: (context) => Account(),
};

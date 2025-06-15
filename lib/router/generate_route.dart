// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'package:carshop/constant/string.dart';
import 'package:carshop/presentation_layer/screens/checkbox.dart';
import 'package:carshop/presentation_layer/screens/details.dart';
import 'package:carshop/presentation_layer/screens/home.dart';
import 'package:carshop/presentation_layer/screens/loginscreen.dart';
import 'package:carshop/presentation_layer/screens/signupscreen.dart';

class AppRouter {
  static Route? generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigatorRoute.home:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case NavigatorRoute.login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case NavigatorRoute.sign_up:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case NavigatorRoute.details:
        return MaterialPageRoute(builder: (_) => Details());

      case NavigatorRoute.checkbox:
        return MaterialPageRoute(builder: (_) => CheckBox());
    }
  }
}

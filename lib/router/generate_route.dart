// ignore_for_file: body_might_complete_normally_nullable

import 'package:commerce/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:commerce/constant/string.dart';
import 'package:commerce/presentation_layer/screens/checkbox.dart';
import 'package:commerce/presentation_layer/screens/details.dart';
import 'package:commerce/presentation_layer/screens/home.dart';
import 'package:commerce/presentation_layer/screens/loginscreen.dart';
import 'package:commerce/presentation_layer/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

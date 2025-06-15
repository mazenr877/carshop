import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/constant/string.dart';
import 'package:carshop/router/generate_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generatRoute,
        initialRoute: NavigatorRoute.sign_up,
      ),
    );
  }
}

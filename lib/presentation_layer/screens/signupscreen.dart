// ignore_for_file: override_on_non_overriding_member

import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/presentation_layer/screens/loginscreen.dart';
import 'package:carshop/presentation_layer/widget/button.dart';
import 'package:carshop/presentation_layer/widget/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 250),
                  child: Column(
                    children: [
                      Field(
                        func: (value) {
                          CharacterCubit.get(context).name = value;
                        },
                        obxc: true,
                        text: "Enter Your UserName",
                        type: TextInputType.text,
                      ),
                      const SizedBox(height: 40),
                      Field(
                        func: (value) {
                          CharacterCubit.get(context).email = value;
                        },
                        obxc: true,
                        text: "Enter Your Email",
                        type: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 40),
                      Field(
                        func: (value) {},
                        obxc: false,
                        text: "Enter Your Password",
                        type: TextInputType.visiblePassword,
                      ),
                      const SizedBox(height: 35),
                      Button(
                        btn: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => (LoginScreen())));
                        },
                        text: 'Sign Up',
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(" Have An Account: "),
                          TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LoginScreen())),
                            child: const Text(
                              "Log In",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}

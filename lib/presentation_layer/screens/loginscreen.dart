import 'package:carshop/bussines_logic_layer/cubit/character_cubit.dart';
import 'package:carshop/presentation_layer/screens/home.dart';
import 'package:carshop/presentation_layer/screens/signupscreen.dart';
import 'package:carshop/presentation_layer/widget/button.dart';
import 'package:carshop/presentation_layer/widget/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                          CharacterCubit.get(context).email = value;
                        },
                        obxc: true,
                        text: "Enter Your Email",
                        type: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 40),
                      Field(
                        func: (value) {},
                        obxc: false,
                        text: "Enter Your Password",
                        type: TextInputType.visiblePassword,
                      ),
                      const SizedBox(height: 35),
                      Button(
                        btn: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Home()));
                        },
                        text: 'Sign In',
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Does Not Have An Account: "),
                          TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignUpScreen())),
                            child: const Text(
                              "Sign Up",
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

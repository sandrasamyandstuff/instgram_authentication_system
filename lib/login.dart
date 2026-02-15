
import 'package:flutter/material.dart';
import 'package:instgram_authentication_system/resetpassword.dart';
import 'package:instgram_authentication_system/signup.dart';
import 'package:instgram_authentication_system/widgtes/custom_button.dart';
import 'package:instgram_authentication_system/widgtes/custom_richtext.dart';
import 'package:instgram_authentication_system/widgtes/custom_textbutton.dart';
import 'package:instgram_authentication_system/widgtes/cutom_divider.dart';
import 'package:instgram_authentication_system/widgtes/cutom_input.dart';
import 'package:instgram_authentication_system/widgtes/instgramlogo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  children: [
                    const SizedBox(height:160),
                    Instgramlogo(),
                    const SizedBox(height: 30),
                    CustomInput(
                      hintText: 'Phone number, email or username',
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                      CustomInput(
                      hintText: 'Password',
                      obscureText: true,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(height: 20),
                    CustomButton(txt: "Log in", onPressed: () {}),
                    const SizedBox(height: 15),
                    Textrich(
                      unclickable: "Forgot your login details? ",
                      clickable: "Get help logging in",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Resetpassword(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    or_divider(),
                    const SizedBox(height: 20),
                    CustomTextbutton(
                      txt: "Log in with Facebook",
                      clr: const Color.fromRGBO(56, 151, 240, 1),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Textrich(
                unclickable: "Don't have an account? ",
                clickable: "Sign up",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instgram_authentication_system/widgtes/custom_button.dart';
import 'package:instgram_authentication_system/widgtes/custom_greytext.dart';
import 'package:instgram_authentication_system/widgtes/custom_richtext.dart';
import 'package:instgram_authentication_system/widgtes/cutom_divider.dart';
import 'package:instgram_authentication_system/widgtes/cutom_input.dart';
import 'package:instgram_authentication_system/widgtes/instgramlogo.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 13.0, right: 13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                Instgramlogo(),
                CustomGreytext(
                  txt: "Sign up to see photos and videos from your friends",
                ),
                SizedBox(height: 20),
                CustomButton(txt: "login with Facebook", onPressed: () {}),
                SizedBox(height: 20),
                or_divider(),
                SizedBox(height: 20),
                CustomInput(
                  hintText: "Mobile Number or Email",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                CustomInput(
                  hintText: "Full Nmae",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                CustomInput(
                  hintText: "Username",
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
                CustomInput(
                  hintText: "Password",
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
                CustomButton(txt: "Sign up", onPressed: () {}),
                Textrich(
                  clickable: "Terms , data policy and cookies policy",
                  unclickable: "By signing up, you agree to our",
                  onPressed: () {},
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

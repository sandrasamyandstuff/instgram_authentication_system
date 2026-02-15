import 'package:flutter/material.dart';
import 'package:instgram_authentication_system/signup.dart';
import 'package:instgram_authentication_system/widgtes/custom_button.dart';
import 'package:instgram_authentication_system/widgtes/custom_greytext.dart';
import 'package:instgram_authentication_system/widgtes/custom_textbutton.dart';
import 'package:instgram_authentication_system/widgtes/cutom_divider.dart';
import 'package:instgram_authentication_system/widgtes/cutom_input.dart';
import 'package:instgram_authentication_system/widgtes/forgotpasswordlogo.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 160,),
                  Forgotpasswordlogo(height: 100),
                  SizedBox(height: 10,),
                  Text(
                    "Trouble logging in?",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                   SizedBox(height: 10,),
                  CustomGreytext(
                    txt:
                        "Enter your email, phone or username \n we'll send you a link to get back to your account",
                  ),
                   SizedBox(height: 10,),
                  CustomInput(
                    hintText: "Email, Phone or Username",
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  CustomButton(txt: "Send login link", onPressed: () {}),
                  SizedBox(height: 20),
                  or_divider(),
                  CustomTextbutton(
                    txt: "Create new account",
                    clr: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 180,
                  ),

                      
                  CustomTextbutton(txt: "Back to login", clr: Colors.black, onPressed: (){
                    Navigator.pop(context);
                  })
          
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextbutton extends StatelessWidget {
  final String txt;
  final Color clr;
  final void Function()? onPressed;
  const CustomTextbutton({super.key, required this.txt, required this.clr, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return               SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                    foregroundColor: clr,
                    shape: RoundedRectangleBorder(                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                  ),
                  child: Text(
                    txt,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
  }
}
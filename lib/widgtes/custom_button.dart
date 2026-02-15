import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.txt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return         SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(56, 151, 240, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                  ),
                  child: Text(
                    txt,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              );
  }
}
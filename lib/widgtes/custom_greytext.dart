import 'package:flutter/material.dart';

class CustomGreytext extends StatelessWidget {
  final String txt;
  const CustomGreytext({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return               Text(txt,

                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              );
  }
}
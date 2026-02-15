import 'package:flutter/material.dart';

class or_divider extends StatelessWidget {
  const or_divider({super.key});

  @override
  Widget build(BuildContext context) {
    return               Row(
                children: <Widget>[
                  Expanded(child: Divider()),

                  Text("OR"),

                  Expanded(child: Divider()),
                ],
              );
  }
}
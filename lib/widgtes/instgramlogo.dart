import 'package:flutter/material.dart';

class Instgramlogo extends StatelessWidget {
  const Instgramlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return              Column(
      children: [
        Text(
                    "Instgram",
                    style: TextStyle(fontFamily: "instgramfont", fontSize: 50),
                  ),
      ],
    );
  }
}
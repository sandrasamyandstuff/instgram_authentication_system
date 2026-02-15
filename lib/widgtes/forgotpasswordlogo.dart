import 'package:flutter/material.dart';

class Forgotpasswordlogo extends StatelessWidget {
  final double height;
  const Forgotpasswordlogo({super.key, this.height=30});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      child: Image.asset("assets/images/lock.png"))
 ;
  }
}
import 'package:flutter/material.dart';

class Textrich extends StatelessWidget {
  final String unclickable;
  final String clickable;
  final void Function()? onPressed;
  const Textrich({super.key , required this.clickable, required this.unclickable , required this.onPressed});


  @override
 Widget build(BuildContext context) {
    return           Padding(
  padding: const EdgeInsets.all(15.0),
  child: Wrap(
    alignment: WrapAlignment.center,
    crossAxisAlignment: WrapCrossAlignment.center, 
    children: [
      Text(
        unclickable+" ",
        style: const TextStyle(color: Colors.black),
      ),
      TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: Text(
          clickable,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
);

  }
}
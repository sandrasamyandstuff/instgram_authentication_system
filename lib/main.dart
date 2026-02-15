import 'package:flutter/material.dart';
import 'package:instgram_authentication_system/login.dart';

void main() {
  runApp(
MyApp(

)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext ontext) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 1)
      ),
debugShowCheckedModeBanner: false,
home: Login(
  
)
    );
}
}
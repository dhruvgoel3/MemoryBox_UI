import 'package:flutter/material.dart';
import 'tracker.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Login_App",
      debugShowCheckedModeBanner: false,
      home: Mypage(),


      );
  }
}


import 'package:flutter/material.dart';
import 'package:signup/screens/sign_up_screen.dart';
import 'lib/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup with Bloc',
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

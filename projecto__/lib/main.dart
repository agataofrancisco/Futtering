import 'package:flutter/material.dart';
import 'package:projecto__/login/pages/wellcome.dart';
import 'package:projecto__/login/pages/wellcome_2.dart';
import 'package:projecto__/login/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_page(),
    );
  }
}

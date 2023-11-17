import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/wellcome.dart';
import 'package:modernlogintute/pages/wellcome_2.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: teste(),
    );
  }
}

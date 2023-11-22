import 'package:flutter/material.dart';
import 'package:sistema/login/pages/wellcome_2.dart';

class wellcome1 extends StatelessWidget {
  const wellcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 111, 111),
      body: Center(
        child: Text(
        "1Homepage",
        style: TextStyle(fontSize: 50),
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';

class wellcome1 extends StatelessWidget {
  const wellcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      body: Center(
        child: Text(
          'wellcome1',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
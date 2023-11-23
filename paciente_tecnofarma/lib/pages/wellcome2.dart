import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';

class wellcome2 extends StatelessWidget {
  const wellcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      body: Center(
        child: Text(
          'wellcome2',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
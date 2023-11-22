import 'package:flutter/material.dart';

class wellcome extends StatelessWidget {
  const wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CENAS',
          style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 245, 0, 0)),
        ),
      ),
    );
  }
}
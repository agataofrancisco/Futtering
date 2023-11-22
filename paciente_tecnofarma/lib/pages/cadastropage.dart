import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CADASTRO',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
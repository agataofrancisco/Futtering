import 'package:flutter/material.dart';

class entrar extends StatelessWidget {

  final Function()? aoClicar;

  const entrar({super.key,
  required this.aoClicar
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:aoClicar,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            'Entrar',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
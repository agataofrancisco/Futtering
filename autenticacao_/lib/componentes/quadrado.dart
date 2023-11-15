import 'package:flutter/material.dart';

class quadrado extends StatelessWidget {
  final String caminhoImagem;
  const quadrado({
    super.key,
    required this.caminhoImagem,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(17),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        caminhoImagem,
        height: 40,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TextoInput extends StatelessWidget {

  final controlador;
  final String dica;
  final bool esconderTexto;

  const TextoInput ({
    super.key,
    required  this.controlador,
    required this.dica,
    required this.esconderTexto,    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      controller: controlador,
      obscureText: esconderTexto,
        decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
      hintText: dica,
      hintStyle: TextStyle(color: Colors.grey[500]),
      ),
    ),
  );
}
}
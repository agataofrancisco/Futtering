import 'package:flutter/material.dart';
import 'dados.dart';

class detalhes extends StatelessWidget {
  final dados Dados;
  const detalhes({Key? key, required this.Dados})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16,),
            Center(
              child: Image.network(Dados.img),
            ),
            const SizedBox(height: 22),
          ],
           
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: inicio(),
  ));
}

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder( 
      builder: (context, constraints){
        return Scaffold(
          final bool isMobile = constraints. maxWidth
        );
      }
    );
  }
}

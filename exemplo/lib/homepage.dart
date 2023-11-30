import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('HOME PAGE', style: TextStyle(fontSize: 50, color: Colors.amberAccent),),
      ),
    );
  }
}
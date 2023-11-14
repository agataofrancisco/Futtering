import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Inicial'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.blue,
          ),
        
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          ),
        ],
      ),
    ); 
  }
}

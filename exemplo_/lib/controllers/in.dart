import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
class inside extends StatefulWidget {
  final token;

  const inside({super.key, required this.token});

  @override
  State<inside> createState() => _insideState();
}

class _insideState extends State<inside> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text("DENTRO", style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
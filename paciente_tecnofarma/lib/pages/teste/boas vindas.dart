/*import 'dart:js';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../homepage.dart';

class boasvindaspage extends StatefulWidget {
  const boasvindaspage({super.key});

  @override
  State<boasvindaspage> createState() => _boasvindaspageState();
}

class _boasvindaspageState extends State<boasvindaspage> {

  @override
  void initState(){
    super.initState();  
    verificarToken().then((value){
      if(value){
        Navigator.pushReplacement(
          context, 
        MaterialPageRoute(builder: (context) =>homepage())
        );
      }else{
        if(value){
        Navigator.pushReplacement(
          context, 
        MaterialPageRoute(builder: (context) =>homepage())
        );
      }
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      )
    );
  }
  
Future<bool> verificarToken () async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('token') != null){
      return true;
    }else {
      return false;
    }
  }
}*/
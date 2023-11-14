import 'package:autenticacao_2/homepage.dart';
import 'package:autenticacao_2/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class verif extends StatefulWidget {
  const verif({super.key});

  @override
  State<verif> createState() => _verifState();
}

class _verifState extends State<verif> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
        if (user == null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => loginpage(),
            ), 
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (
                context) => homepage(),
            ), 
          );
        }
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
import 'package:autenticacao/pages/Login_Page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:autenticacao/pages/HomePage.dart';

class verif extends StatelessWidget {
  const verif({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return inicio();
          }
          else{
            return Login_Page(); 
          }
        }
        ,)
    );
  }
}
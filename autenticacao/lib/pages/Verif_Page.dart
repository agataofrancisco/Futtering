import 'package:autenticacao/pages/HomePage.dart';
import 'package:autenticacao/pages/Login_Page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
            return ola();
          }
          else{
            return Login_Page(); 
          }
        }
        ,)
    );
  }
}

class incio extends StatelessWidget {
  final user ; // Certifique-se de ter a classe User importada

  const incio({required this.user});

  void usuario_sair() {
    // Implemente a lógica de saída do usuário
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: usuario_sair,
            icon: Icon(Icons.logout), // Corrigido para Icons.login
          ),
        ],
      ),
      body: Center(
        child: Text(
          'DENTRO ${user.email}', // Use ${} para incorporar a variável dentro da string
          style: TextStyle(fontSize: 20), // Corrigido o estilo
        ),
      ),
    ); 
  }
}
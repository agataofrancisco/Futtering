import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  inicio ({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  void usuario_sair(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var icons = Icons;
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: usuario_sair,
        icon: (icons.logout),
        ),
      ]),
      body: Center(
        child: Text('DENTRO' + user.email,
        style: TextStyle(fontStyle: (fontSize: 20)
        ),
        ),
      ),
    );
  }
}
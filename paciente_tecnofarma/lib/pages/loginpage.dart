import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 46, 73),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              controller: usernameController,
              hintText: 'NOME DE USUARIO',
              obscureText: false,
            ),
            SizedBox(height: 9),
            MyTextField(
              controller: passwordController,
              hintText: 'Palavra Passe',
              obscureText: false,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'cad');
              },
              child: const Text('Entrar'),
            ),
            Padding(padding: const EdgeInsets.all(20.0),
             child: Text('Ou'),
            ),
            
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'cad');
            }, 
            child: Text('Nao me lembro da senha')),
            /*ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>wellcome()),
                );
              },
              child: const Text('Entrar'),
            ),*/
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, 'cad');
              }, icon: Icon(Icons.arrow_back), label:Text('') , )
          ],
        ),
      ),
    );
  }
}
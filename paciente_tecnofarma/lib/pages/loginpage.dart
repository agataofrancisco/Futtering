import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/cadastropage.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});


  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 69, 107),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>wellcome()),
                );
              },
              child: const Text('Entrar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>CadastroPage()),
                );
            }, 
            child: Text('Clique aqui para criar uma conta')),
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
                Navigator.pushNamed(context, 'telab');
              }, icon: Icon(Icons.arrow_back), label:Text('') , )
          ],
        ),
      ),
    );
  }
}
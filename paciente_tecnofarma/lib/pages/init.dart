import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/cadastropage.dart';
import 'package:paciente_tecnofarma/pages/loginpage.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('imagens/logo.png')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Seja Bem-Vindo ao TecnoFarma',
                  style: TextStyle(
                    fontSize: 30, 
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Text('Cadastrar'),
                    onPressed: () {
                      Navigator.pushNamed(context, 'cad');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Entrar'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

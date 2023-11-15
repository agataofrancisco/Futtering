import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final emailController = TextEditingController();
  final palavrapasseController = TextEditingController();

  void ola() {
    print("Olá!");
    // Adicione aqui o código que você deseja executar ao clicar no botão "Entrar"
  }

  void _validarCampos() {
    if (emailController.text.isEmpty || palavrapasseController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Erro"),
            content: Text("Por favor, preencha todos os campos."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // Os campos estão preenchidos, pode prosseguir com o login
      ola();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80,),
              const Icon(Icons.lock, size: 200),
              Text(
                'Seja-Bem vindo de volta',
                style: TextStyle(color: Colors.grey[700], fontSize: 20),
              ),
              const SizedBox(height: 50,),
              TextoInput(
                controlador: emailController,
                dica: 'Nome de Utilizador',
                esconderTexto: false,
              ),
              const SizedBox(height: 10,),
              TextoInput(
                controlador: palavrapasseController,
                dica: 'Palavra Passe',
                esconderTexto: true,
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Esqueceu-se da palavra passe?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              entrar(
                aoClicar: () {
                  _validarCampos();
                },
              ),
              const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Ou continue com',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  quadrado(caminhoImagem: 'lib/imagens/google.png'),
                  const SizedBox(width: 25,),
                  quadrado(caminhoImagem: 'lib/imagens/aplle-logo.png'),
                ],
              ),
              const SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Registe-se Agora',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
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

import 'package:autenticacao/componentes/botoes.dart';
import 'package:autenticacao/componentes/componetes.dart';
import 'package:autenticacao/componentes/quadrado.dart';
import 'package:autenticacao/pages/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  //Criar o controlador de texto
  final emailController = TextEditingController();
  final palavrapasseController = TextEditingController();
  
Future<void> usuario_entrar() async {
  void usuario_entrar() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: palavrapasseController.text,
    );
    Navigator.pop(context);
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
            children:  [
            const SizedBox(height: 80,),
            //logo
            const Icon(Icons.lock,
            size: 200,
            ),
            
            //BEMVINDO DE VOLTA
          Text('Seja-Bem vindo de volta',
            style:TextStyle(color: Colors.grey[700],
            fontSize: 20,        
            ),
          ),

          const SizedBox(height: 50,),

            //NOME DE UTILIZADOR
            TextoInput(
              controlador:emailController,
              dica: 'Nome de Utilizador',
              esconderTexto: false,
            ),

            const SizedBox(height: 10,),
            //PALAVRA PASSE
            TextoInput(
              controlador: palavrapasseController,
              dica: 'Palavra Passe',
              esconderTexto: true,
            ),
            const SizedBox(height: 50,),

             //Esqueceu-se da palavra passe?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Text(
                    'Esqueceu-se da palavra passe?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
              
            const SizedBox(height: 25,),
            //Entrar
            entrar(
              aoClicar: usuario_entrar,
            ),            
            
            const SizedBox(height: 60,),
            //BOTOES GOOGLE E APPLE 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: 
                    Divider(
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
              //BOTOES
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  quadrado(caminhoImagem: 'lib/imagens/google.png'),
                  
                  const SizedBox(width: 25,),

                  quadrado(caminhoImagem: 'lib/imagens/aplle-logo.png'),
                ],
              ),

              const SizedBox(height: 70,),
              //registe-se
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
          ]),
        ),
      ),
    );
  }
}
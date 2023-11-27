import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';

import 'cadastropage.dart';
void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _zoomAnimation;
  late Animation<Offset> _slideAnimation;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  bool isExpanded = false;

  @override
  void initState() {
    super.initState();

    // Configurar o controlador de animação
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    // Configurar a animação de zoom
    _zoomAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Configurar a animação de deslize
    _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Iniciar a animação automaticamente ao abrir o aplicativo
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.scale(
                  scale: _zoomAnimation.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Bem-Vindo de Volta',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: SlideTransition(
              position: _slideAnimation,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromARGB(255, 12, 46, 73),
                ),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => wellcome()));
                },
                child: const Text('Entrar'),
              ),
              Padding(padding: const EdgeInsets.all(20.0),
               child: Text(
                'Ou',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroPage()),
              );
                },
                child: const Text('Criar uma conta'),
              ),
              
              TextButton(
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => CadastroPage()));
              }, 
              child: Text('Nao me lembro da senha')),
            ],
          ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}


/*import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/reservas.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';
import 'package:http/http.dart'as http;
import 'cadastropage.dart';
import 'homepage.dart';
import 'dart:async';
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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
             TextFormField(
                  
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'pass',
                    border: OutlineInputBorder(
                    ),
                  )
                ),
                SizedBox(height: 20,),
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('entrar'),
                  ),
                ),
                SizedBox(height: 45,),
                
            OutlinedButton.icon(onPressed: (){
              login();

            }, icon: Icon(Icons.login), label: Text('Login')),
            ],
          ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> login () async {
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
     var response = await http.post(Uri.parse('https://reqres.in/api/login'),
      body: ({
          emailController.text,
          passwordController.text
        })
      );
      if(response.statusCode==200)
      {
          Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => reservas()),
              );
      }
      else{
        ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text('ninvalido')));
      }
    }else{
      ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text('not alowed')));
    }
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
*/
import 'package:paciente_tecnofarma/main.dart';
import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/reservas.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';
import 'package:http/http.dart'as http;
import 'cadastropage.dart';
import 'homepage.dart';
import 'dart:async';
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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
                      Image.asset(
                      'assets/images/example.png',
                      width: 100, // Ajuste conforme necessário
                      height: 100, // Ajuste conforme necessário
                    ),
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
             TextFormField(
                  
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: 'email',
                  ),
                ),
                SizedBox(height: 20,),
                /*TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'pass',
                    border: OutlineInputBorder(
                    ),
                  )
                ),*/
                MyTextField(controller: passwordController, hintText: 'pass', obscureText: true),
                SizedBox(height: 20,),
                Container(
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text('entrar'),
                  ),
                ),
                SizedBox(height: 45,),
                
            OutlinedButton.icon(onPressed: (){
              login();

            }, icon: Icon(Icons.login), label: Text('Login')),
            ],
          ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> login () async {
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
     var response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );
      if(response != null && response.statusCode == 200)
      {
        
      Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => homepage()),
          );
      }
      else{
        ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text('ninvalido')));
      }
    }else{
      ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content:Text('not alowed')));
    }
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}


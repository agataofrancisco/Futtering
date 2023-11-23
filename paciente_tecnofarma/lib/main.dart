import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/cadastropage.dart';
import 'package:paciente_tecnofarma/pages/dashboard.dart';
import 'package:paciente_tecnofarma/pages/init.dart';
import 'package:paciente_tecnofarma/pages/loginpage.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',                             
      routes: {                               
        'cad': (context) =>   CadastroPage(),   
        '/login': (context) => LoginPage(),
        //'/init': (context) => Inicio(),   
      },  
      title: 'Flutter',
      home: wellcome(),
    );
  }
}


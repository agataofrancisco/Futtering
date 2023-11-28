import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/cadastropage.dart';
import 'package:paciente_tecnofarma/pages/dashboard.dart';
import 'package:paciente_tecnofarma/pages/homepage.dart';
import 'package:paciente_tecnofarma/pages/init.dart';
import 'package:paciente_tecnofarma/pages/loginpage.dart';
import 'package:paciente_tecnofarma/pages/teste/cadastr.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import 'package:paciente_tecnofarma/testes.dart';

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
        '/home': (context) => homepage(),
        //'/init': (context) => Inicio(),   
      },  
      title: 'Flutter',
      home: homepage(),
    );
  }
}


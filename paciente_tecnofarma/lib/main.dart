import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/cadastropage.dart';
import 'package:paciente_tecnofarma/pages/homepage.dart';
import 'package:paciente_tecnofarma/pages/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp( MyApp(token: prefs.getString('token'),));
}

                                                             
class MyApp extends StatelessWidget {
  var token; // Assuming token can be null, adjust if needed

  MyApp({Key? key, @required this.token}) : super(key: key);
   /*DateTime expirationDate = JwtDecoder.getExpirationDate(token);

  // 2025-01-13 13:04:18.000
  print(expirationDate);*/
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //LoginPage(), 
      (JwtDecoder.isExpired(token) == false) ? homepage(ttoken: token) : LoginPage(),
      
      initialRoute: '/',                             
      routes: {                               
        'cad': (context) =>   CadastroPage(),   
        '/login': (context) => LoginPage(),
        //'/home': (context) => homepage(),
        //'/init': (context) => Inicio(),   
      },  
    );
  }
}



import 'dart:js';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/in.dart';
import 'dart:convert';
import 'package:exemplo_/controllers/auth_controlers.dart';

bool _isNotValidate = false;

late SharedPreferences prefs;

class AuthController{

Future loginUser(BuildContext context, String email, String password) async {
  const _url = 'https://tecnofarma.vercel.app/authenticate';
  var response = await http.post(Uri.parse(_url), body: {
    "email": email,
    "password": password,
  });

  try {
    if (response.statusCode == 200) {
      var token = json.decode(response.body);
      
      prefs.setString('token', token);
      //ernesto@tecnobase.com Tecno1234

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => inside(token: token,)),
      );
      print(token);
    } else if (email.isEmpty && password.isEmpty) {
      print("Erro: Campos vazios");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Preencha todos os campos'),
      ));
    } else {
      print("Erro na autenticação");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Dados nao coorespondem'),
      ));
    }
  } catch (e) {
    print("Error decoding JSON: $e");
    // Handle the JSON decoding error appropriately, e.g., show an error message
  }
}

}

class login extends StatefulWidget {


  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

@override
void initState(){
  super.initState();
  initSharedPref();
}

void initSharedPref() async{
  prefs = await SharedPreferences.getInstance();
}

  @override
  Widget build(BuildContext context) {
    final _emailcontroller = TextEditingController();
    final _passwordcontroller = TextEditingController();
    AuthController authController = AuthController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'email'
                  ),
                  controller: _emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content:Text('not alowed')));
                    } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
                      ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content:Text('not alowed'))); // Return this message if the email format is incorrect.
                    }
                    return null; // 
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Palavra passe'
                  ),
                  controller: _passwordcontroller,
                  keyboardType: TextInputType.text,
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      
                    } else if (senha.length < 6){
                     
                    }
                    return null; 
                  }),
                SizedBox(height: 25,),
                  ElevatedButton(
                  onPressed: () {
                    authController.loginUser(context, _emailcontroller.text, _passwordcontroller.text);
                  },
                  child: Text('entrar'),
                ),
              ],
            ),
          )
        )          
      ),
    );
  }
}


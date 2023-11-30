import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package: http/http.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _fromkey = GlobalKey<FormState>();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _fromkey,
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
                      return 'DIGITE O EMAIL'; // Return this message if the email is null or empty.
                    } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
                      return 'Por favor, digite um e-mail correto'; // Return this message if the email format is incorrect.
                    }
                    return null; // Return null if the email is valid.
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
                      return 'DIGITE A SENHA'; 
                    } else if (senha.length < 6){
                      return 'Por favor, digite uma senha maior'; 
                    }
                    return null; 
                  }),
                SizedBox(height: 25,),
                  ElevatedButton(
                  onPressed: () {
                  
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

Future<bool>_login() async{
  
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('https://minhasapis.com.br/login/');
  }
/*Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    TextFromField(
      controller: _emailcontroller,
      keyboardType: TextInputType.emailAddress,
      validator: (email) {
        if (email == null || email.isEmpty) {
          return 'DIGITE O EMAIL'; // Return this message if the email is null or empty.
        } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
          return 'Por favor, digite um e-mail correto'; // Return this message if the email format is incorrect.
        }
        return null; // Return null if the email is valid.
      },
    ),
    // Add other TextFromField widgets or any other widgets you need here.

    ElevatedButton(
      onPressed: () {
        // Validate the form before proceeding further
        if (_formKey.currentState?.validate() ?? false) {
          // If the form is valid, perform the necessary actions
          // For example, you can proceed with login or any other operation.
        }
      },
      child: Text('entrar'),
    ),
  ],
)
*/
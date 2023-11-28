import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailController = TextEditingController();
  var  passwordlController = TextEditingController();

  /*void login(String email, password) async {
    try{
      http.Response response = await http.post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
          'email': email,
          'passeord': password
        }
      );

      if (response.statusCode==200){
        print('conta criada');
      }else{
        print('conta criadrsfgrsererera');
      }
    }catch(e)
    {
      print(e.toString());
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  controller: passwordlController,
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
    );
  }
  Future<void> login () async {
    if(emailController.text.isNotEmpty && passwordlController.text.isNotEmpty){
     var response = await http.post(Uri.parse('https://reqres.in/api/login'),
      body: ({
          emailController.text,
          passwordlController.text
        })
      );
      if(response.statusCode==200)
      {

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
}
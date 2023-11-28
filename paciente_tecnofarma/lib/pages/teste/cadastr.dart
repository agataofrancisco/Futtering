import 'package:flutter/material.dart';
import 'package:http/http.dart';

class cad extends StatefulWidget {
  const cad({super.key});

  @override
  State<cad> createState() => _cadState();
}

class _cadState extends State<cad> {
 
 TextEditingController emailController = TextEditingController();
 TextEditingController  passwordlController = TextEditingController();

  void login(String email, password) async {
    try{
      Response response = await post(
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
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            
          GestureDetector(
            onTap: (() {
              login(emailController.text.toString(), passwordlController.text.toString());
            }),
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text('entrar', style: TextStyle(color: Colors.white),),),
            ),
          )    
          ],
          
        ),
      ),
    );
  }
}
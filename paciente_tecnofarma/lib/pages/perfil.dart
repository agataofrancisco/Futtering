import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';
import 'package:paciente_tecnofarma/model/dados.dart';
import 'package:http/http.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class perfilPage extends StatefulWidget {

  final  cod_token;

  const perfilPage({super.key, required this.cod_token});

  @override
  State<perfilPage> createState() => _perfilPageState();
}

class _perfiliState extends State<perfilPage> with SingleTickerProviderStateMixin {
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
        title: Text('My App'),          
      ),
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 0
                          ),
                          child: Container(
                            height: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('AH'),
                            ),
                          ),
                        ),
                      ),
                      
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 1, // Ajuste conforme necessário
                        ),
                        child: ListTile(
                          title: Text('dados.name'),
                          subtitle: Text('dados.name'),
                          trailing: Icon(Icons.map),
                        
                          tileColor: Colors.blue, // Cor de fundo
                          contentPadding: EdgeInsets.all(10), 
                          // Preenchimento interno
                          shape: RoundedRectangleBorder( // Borda
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black), // Cor da borda
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 1, // Ajuste conforme necessário
                        ),
                        child: ListTile(
                          title: Text('censafddsfs'),
                          subtitle: Text('censafddsfs'),
                          trailing: Icon(Icons.map),
                        
                          tileColor: Colors.blue, // Cor de fundo
                          contentPadding: EdgeInsets.all(10), 
                          // Preenchimento interno
                          shape: RoundedRectangleBorder( // Borda
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black), // Cor da borda
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                     Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 1, // Ajuste conforme necessário
                        ),
                        
                        child: ListTile(
                          title: Text('censafddsfs'),
                          subtitle: Text('censafddsfs'),
                          trailing: Icon(Icons.map),
                        
                          tileColor: Colors.blue, // Cor de fundo
                          contentPadding: EdgeInsets.all(10), 
                          // Preenchimento interno
                          shape: RoundedRectangleBorder( // Borda
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black), // Cor da borda
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                     Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 1, // Ajuste conforme necessário
                        ),
                        child: ListTile(
                          title: Text('censafddsfs'),
                          subtitle: Text('censafddsfs'),
                          trailing: Icon(Icons.map),
                        
                          tileColor: Colors.blue, // Cor de fundo
                          contentPadding: EdgeInsets.all(10), 
                          // Preenchimento interno
                          shape: RoundedRectangleBorder( // Borda
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black), // Cor da borda
                          ),
                        ),
                      ),
                      Icon(Icons.logout)
                    ],
                  ),
                );
              },
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



/*

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
        MaterialPageRoute(builder: (context) => homepage(token: token,)),
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
}*/
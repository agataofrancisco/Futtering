import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/wellcome.dart';
import '../componentes/caixas_de_texto.dart';
import 'package:paciente_tecnofarma/main.dart';


class perfilPage extends StatefulWidget {
  const perfilPage({super.key});

  @override
  State<perfilPage> createState() => _perfilPageState();
}

class _perfilPageState extends State<perfilPage> {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: perfili(),
    );
  }
}


class perfili extends StatefulWidget {
  @override
  _perfiliState createState() => _perfiliState();
}

class _perfiliState extends State<perfili> with SingleTickerProviderStateMixin {
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 10,
                          bottom: 0.0,
                        ),
                        child: Text(
                          'Perfil',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 0.2,
                          bottom: 0.0,
                        
                        ),
                        child: Text(
                          'Visualize e controle os seus dados pessoais',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
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
            flex: 3,
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
                  /*Container(
                    margin: EdgeInsets.only(
                    top: 0,
                    left: 50,
                    right: 50,
                    bottom: 0,
                    ),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 86, 152, 206),
                    ),
                  ),*/
                  
                  
                    
                  
                ]
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


/*fghzd

appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
        title: Text('My App'),
        ),
      
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10,
              bottom: 0.0,
            ),
             child: Text(
              'Perfil',
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 0.2,
              bottom: 0.0,
             
            ),
            
            child: Text(
              'Visualize e controle os seus dados pessoais',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
         
        ],

 */
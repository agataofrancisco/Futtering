import 'package:flutter/material.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> with TickerProviderStateMixin {
  double altura = 100;
  double largura = 100;

  @override
  void initState() {
    super.initState();
    // Adia a chamada da função zoom() por 500 milissegundos
    Future.delayed(Duration(milliseconds: 500), () {
      zoom();
    });
  }

  void zoom() {
    setState(() {
      altura = 300;
      largura = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Muda o fundo da página para verde
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: ScaleTransition(
              scale: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(
                  parent: AnimationController(
                    vsync: this,
                    duration: Duration(seconds: 2),
                  )..forward(),
                  curve: Curves.easeInOut,
                ),
              ),
              child: Text(
                'Bem-vindo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          height: altura,
          width: largura,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black, // Muda a cor do ícone para preto
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Login'),
      ),
      body: Center(
        child: Text('Conteúdo da Página de Login'),
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/pages/dashboard.dart';
import 'package:paciente_tecnofarma/pages/perfil.dart';
import 'package:paciente_tecnofarma/pages/reservas.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _navState();
}

class _navState extends State<homepage> {

  int _opselect = 0;

  void navegar (int index){
    setState(() {
      _opselect = index;
    });
  }

  final List<Widget> _pages = [
    perfili(),
      Center(
      child: Text(
        "2Homepage",
        style: TextStyle(fontSize: 50),
      ),
    ),
    dashboard(),
    reservas(),
    Center(
      child: Text(
        "6Homepage",
        style: TextStyle(fontSize: 50, backgroundColor: Colors.amberAccent),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_opselect],
      
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
        animationDuration: Duration(milliseconds: 300),
        onTap: navegar,
        index: _opselect,
        items: const [
          const Icon( Icons.account_circle, ),
          Icon(Icons.map),
          Icon(Icons.home),
          Icon(Icons.login),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
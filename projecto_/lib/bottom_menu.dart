import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsivetutorial/homepage.dart';
import 'package:responsivetutorial/perfil.dart';
import 'package:responsivetutorial/responsive/mobile_body.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {

  int _opselect = 1;

  void navegar (int index){
    setState(() {
      _opselect = index;
    });
  }

  final List<Widget> _pages = [
    Center(
     child: perfil()
    ),
      Center(
        child: MyMobileBody(),
      ),
    Center(
      child: Text(
        "3Homepage",
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        "4Homepage",
        style: TextStyle(fontSize: 50, backgroundColor: Colors.amberAccent),
      ),
    ),
    Center(
      child: Text(
        "5Homepage",
        style: TextStyle(fontSize: 50, backgroundColor: Colors.amberAccent),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_opselect],
      backgroundColor: const Color.fromARGB(255, 113, 111, 111),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
        color: Colors.black,
        animationDuration: Duration(milliseconds: 300),
        onTap: navegar,
        index: _opselect,
        items: const [
          const Icon( Icons.account_circle, ),
          Icon(Icons.list),
          Icon(Icons.home),
          Icon(Icons.login),
          Icon(Icons.logout),
        ],
      ),
    );
  }
}
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsivetutorial/homepage.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {

  int _opselect = 0;

  void navegar (int index){
    setState(() {
      _opselect = index;
    });
  }

  final List<Widget> _pages = [
    Center(
      child: Text(
        "1Homepage",
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        "2Homepage",
        style: TextStyle(fontSize: 50),
      ),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_opselect],
      backgroundColor: const Color.fromARGB(255, 113, 111, 111),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 113, 111, 111),
        color: Colors.grey.shade100,
        animationDuration: Duration(milliseconds: 300),
        onTap: navegar,
        items: [
          Icon(Icons.home),
          Icon(Icons.list),
          Icon(Icons.settings),
          Icon(Icons.money),
        ],
      ),
    );
  }
}
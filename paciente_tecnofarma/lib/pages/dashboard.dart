import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding( 
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20,
              bottom: 0.0,
            ),
            child: Title(
              color: Colors.white,
              child: Text(
                'Inicio',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 0.2,
              bottom: 0.0,
            ),
            child: Title(
              color: Colors.white,
              child: Text(
                'Historico Diario',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Center( 
                  child: 
                  const Text(
                    "Consulas realizadas",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Center( 
                  child: 
                  const Text(
                    "Consulas realizadas",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
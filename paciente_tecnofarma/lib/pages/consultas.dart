import 'package:flutter/material.dart';

class consultas extends StatefulWidget {
  const consultas({super.key});

  @override
  State<consultas> createState() => _consultasState();
}

class _consultasState extends State<consultas> {
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10,
                  bottom: 0.0,
                ),
                child: Text(
                  'Consultas',
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
                  'Marque uma consulta',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(
                     context: context,
                     builder: (BuildContext context) {
                      return SizedBox(
                        height: 400,
                        child: Center(
                          child: Text('Marcar uma consulta'),
                        ),
                      ); 
                      }
                    );
                  },                      
                child: Text('Marcar uma consulta'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0), 
                
              
              )
              
            ],
          ),
        ],
      )
    );
  }
}
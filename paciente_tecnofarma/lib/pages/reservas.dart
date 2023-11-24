import 'package:flutter/material.dart';

class reservas extends StatelessWidget {
  const reservas({super.key});

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
                  'Reservas',
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
                  'Reserve os seus medicamentos',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
              
                  },                      
                child: Text('Adicionar reserva'),
                
                ),
              ),
               GridView.count(
                primary: false,
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: .5, // Ajuste o valor para reduzir o espaçamento horizontal entre os itens
                mainAxisSpacing: .5,
                crossAxisCount: 2,
                childAspectRatio: 1.0, // Ajuste o valor conforme necessário
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: const EdgeInsets.all(10), // Ajuste o valor conforme necessário
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
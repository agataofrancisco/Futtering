import 'package:flutter/material.dart';
import 'dart:math'; // Importe a biblioteca 'dart:math' para gerar um ícone aleatório.

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Telefone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // youtube video
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey,
                height: 250,
              ),
            ),

            // comment section & recommended videos
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      color: Colors.grey,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Landing à esquerda
                          Text('Landing ${index + 1}'),

                          // Title ao lado do Landing
                          Text('Title ${index + 1}'),

                          // Trailing à direita (ícone aleatório, por exemplo, ponto de exclamação)
                          Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 231, 106, 100),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

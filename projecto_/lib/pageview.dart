import 'dart:ui';

import 'package:flutter/material.dart' show AppBar, BuildContext, Color, Colors, Column, Container, EdgeInsets, Expanded, Icon, Icons, Key, ListView, MainAxisAlignment, Padding, Row, Scaffold, StatelessWidget, Text, Widget;
import 'dart:math';

import 'package:flutter/src/widgets/basic.dart'; // Importe a biblioteca 'dart:math' para gerar um ícone aleatório.

class perfili extends StatelessWidget {
  const perfili({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 111, 111),
  
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Padding(
             padding: const EdgeInsets.all(0.0),
              child: Container(
                child: SizedBox(
                  height: 5,
                  width: 190,
                  child: Text('fdsfdfsfdsf'),
                ),
                color: Colors.grey,
                height: 250,
              ),
            ),

            Expanded(
              child: ListView.builder(
                
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),                
                    child: Container(
                      color: Colors.grey,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Landing à esquerda
                          Row(
                            children: [
                              Center(
                                  child:Text(
                                    'testewiofghswi',
                                    style: TextStyle(
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
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

import 'package:flutter/material.dart' show AppBar, BuildContext, Color, Colors, Column, Container, EdgeInsets, Expanded, Icon, Icons, Key, ListView, MainAxisAlignment, Padding, Row, Scaffold, StatelessWidget, Text, TextStyle, Widget;


class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      appBar: AppBar(
        title: Text('DFGJO'),
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
                      color: Colors.black,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Landing à esquerda
                          Text('Landing ${index + 1}',),

                          // Title ao lado do Landing
                          Text('Title ${index + 1}',style: TextStyle(color: Colors.white,),),

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

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

class perfil extends StatelessWidget {
  const perfil({Key? key}) : super(key: key);

  itemprofile(String title, String subtitle, IconData iconData){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
         offset: Offset(0,5),
         color: Colors.black,
         spreadRadius: 2,
         blurRadius: 10,
        )
      ]
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
  
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    )
                  ),
                ),
              ),
              Padding( 
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  child: Text(
                    'Meu Perfil',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.star,),
                       title: Text('Nome', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                        subtitle: Text('Agatao Francisco', style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                  SizedBox(height: 20), // Espaço vertical de 16 pixels (ajuste conforme necessário)
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.star),
                       title: Text('Nome', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                        subtitle: Text('Agatao Francisco', style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                  SizedBox(height: 20), 
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.star),
                       title: Text('Nome', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                        subtitle: Text('Agatao Francisco', style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
/*



     
        
          
          Expanded(
              child: ListView.(
                  EdgeInsets.all(5.0);
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Landing à esquerda
                          Text('Titulodgksfj'),
                          // Trailing à direita (ícone aleatório, por exemplo, ponto de exclamação)
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ),
        ),
      ),


child:ListView(
        children:[
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 1'),
            subtitle: Text('jtjktujtyyt'),
            onTap: () {
              // Ação ao tocar no Item 1
              print('I');
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 2'),
            subtitle: Text('jtjktujtyyt'),
            onTap: () {
              // Ação ao tocar no Item 2
              print('jtjktujtyyt');
            },
          ),
          // Adicione mais ListTiles conforme necessário
        ],
      ),




Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: ListTile(
                        title: Text('Item 2'),
                        subtitle: Text('jtjktujtyyt'),
                      ),
                    ),
                  ),
                ],
              ),
            )
*/











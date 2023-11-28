import 'package:flutter/material.dart';

import 'dados_.dart';


class lista extends StatelessWidget {
  final dados Dados;
  const lista({Key? key, required this.Dados}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 10)
    );
    child:Column(children: [
      ListTile(
        title: Text('dname'),
        subtitle: Text(Dados.name),
        trailing: Image.network(Dados.img),
        tileColor: Colors.blue, // Cor de fundo
        contentPadding: EdgeInsets.all(10), 
        // Preenchimento interno
        shape: RoundedRectangleBorder( // Borda
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black), // Cor da borda
        ),
      ),
    ],);
  }
}
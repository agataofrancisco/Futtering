import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Ola Mundo'));    
}

class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Container(
        child: Center(
          child: Text(
            title,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 100.0),
        ),
      ),
      ),
    );
  }
}


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class HomePageState extends State<HomePage>{

  int counter = 0;

  @override
  Widget build(BuildContext context){
    return Container(
      child:Center(
        child: GestureDetector(
          child: Text('Contador: $counter'),
          onTap: (){
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}
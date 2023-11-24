import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/componentes/slider.dart';
import 'package:carousel_slider/carousel_slider.dart';


class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
        title: Text('My App'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: .8,
              bottom: 0.0,
            ),
             child: Text(
              'Inicio',
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
              'Historico Diario',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
  child: GridView.count(
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
              Text(
                "Total de consultas realizadas",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.all(8),
          padding: const EdgeInsets.all(10), // Ajuste o valor conforme necessário
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total de consultas realizadas",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.all(8),
          padding: const EdgeInsets.all(10), // Ajuste o valor conforme necessário
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total de consultas realizadas",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.all(8),
          padding: const EdgeInsets.all(10), // Ajuste o valor conforme necessário
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total de consultas realizadas",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
              Text(
                '9',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(-20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 180, // Ajuste a altura conforme necessário
                  child: CarouselSlider.builder(
                    itemCount: 3, // Substitua pelo número real de itens
                    itemBuilder: (context, index, realIndex) {
                      // Construa seus itens do carrossel aqui
                      return buildCarouselItem(index);
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCarouselItem(int index) {
    return Container(
      color: Colors.blue, 
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:paciente_tecnofarma/componentes/slider.dart';
import 'package:carousel_slider/carousel_slider.dart';


class dashboard extends StatelessWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 64, 100),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 64, 100),
        title: Text('My App'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20,
              bottom: 0.0,
            ),
            child: Text(
              'Inicio',
              style: TextStyle(
                fontSize: 30,
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
              'Historico Diario',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(0),
              crossAxisSpacing: 12,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Consultas realizadas",
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Consultas realizadas",
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    color: Colors.brown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Consultas realizadas",
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total de consultas realizadas",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                        Text(
                          '9',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
         
          Expanded(
            
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'cad');
                        },
                        child: Text('TODOS'),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200, // Ajuste a altura conforme necessário
                  child: CarouselSlider.builder(
                    itemCount: 3, // Substitua pelo número real de itens
                    itemBuilder: (context, index, realIndex) {
                      // Construa seus itens do carrossel aqui
                      return buildCarouselItem(index);
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildCarouselItem(int index) {
    return Container(
      color: Colors.blue, 
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
*/

/*Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20,
              bottom: 0.0,
            ),
             child: Text(
              'Inicio',
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
              'Historico Diario',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ), */
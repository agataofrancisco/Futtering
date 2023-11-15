import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Pagina inicial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              child: Column(
                children: [
                  // painel principal
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.grey,
                            height: 120,
                          ),
                  ),

                  // seccao da lista
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.grey,
                            height: 120,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

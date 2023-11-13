import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/services/firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //FIRESTORE
  final FirestoreService firestoreService = FirestoreService();


  //CONTROLADOR DE TEXTO
  final TextEditingController textController = TextEditingController();

  void openNoteBox(String? docID){
    showDialog(
      //ENTRADA DE TEXTO
        context: context, 
        builder:(context) => AlertDialog(
          content:TextField(
          controller: textController,
        ),
        actions: [

          //CRIAR O BOTAO DE SALVAR
          ElevatedButton(
            onPressed: () {
              //ADICIONAR UMA NOVA NOTA
              if(docID==null){
                firestoreService.addNote(textController.text);
              }
              else
              {
                firestoreService.updateNotes(docID, textController.text);
              }

              //limpar
              textController.clear();

              //fechar
              Navigator.pop(context);
             }, 
            child: Text('Adicionar')
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestor de notas")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openNoteBox(null),
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot){
          //verificacao da existencia de dados no banco
          if(snapshot.hasData){
            List noteslist = snapshot.data!.docs;

            //apresentar a lista
            return ListView.builder(
              itemCount: noteslist.length,
              itemBuilder: (context, index){
                //obtendo individualmente as notas
                DocumentSnapshot document = noteslist[index];
                String docID = document.id;

                //obtendo as notas de cada documento
                Map <String, dynamic> data = 
                  document.data() as Map <String, dynamic>;
                String noteText = data['note'];

                //organizar a lista 
                return ListTile(
                  title: Text(noteText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //botao de actualizar
                      IconButton(
                         onPressed: () => openNoteBox(docID),
                         icon: const Icon(Icons.settings),
                      ),

                      //botao para eliminar
                      IconButton(
                         onPressed: () => firestoreService.deleteNote(docID),
                         icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              }
            );
          }
          //caso nao existam notas
          else{
            return const Text('Sem notas');
          }         
        }
      ),
    );
  }
}
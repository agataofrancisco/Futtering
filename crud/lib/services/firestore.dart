import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService{
  final CollectionReference notes = 
    FirebaseFirestore.instance.collection('notes');

  Future<void> addNote(String note){
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
  });
}


  //Ler
  Stream<QuerySnapshot> getNotesStream(){
    final noteStream =
      notes.orderBy('timestamp', descending: true).snapshots();

      return noteStream; 
  }

  //Actualizar
  Future<void> updateNotes(String docID, String newNote) async {
  try {
    await notes.doc(docID).update({
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
  } catch (e) {
    print("Erro durante a atualização: $e");
    // Trate o erro conforme necessário, por exemplo, lançando uma exceção ou retornando um valor específico.
  }
}

  //Apagar
  Future<void>deleteNote(String docID){
    return notes.doc(docID).delete();
  }
}

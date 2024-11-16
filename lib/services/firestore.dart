import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreServices {
  //get collection

  final CollectionReference tasks =
      FirebaseFirestore.instance.collection('Tasks');

  Future<void> addTask(String task) async {
    try {
      await tasks.add({
        'Task': task,
        'TimeStamp': Timestamp.now(),
      });

      print('Task added successfully!');
    } catch (e) {
      print('Error adding task: $e');
    }
  }

  //read

  //update

  //delete
}

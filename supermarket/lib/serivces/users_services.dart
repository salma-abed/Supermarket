import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class usersservices{
static Stream<List<usermodel>> readUsers() => FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => usermodel.fromJson(doc.data())).toList());

  Future createUser(usermodel user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    user.id = docUser.id;
    final json = user.toJson();
    await docUser.set(json);
  }
}




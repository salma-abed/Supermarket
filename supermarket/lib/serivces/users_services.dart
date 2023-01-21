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
// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../models/user.dart';

// class User_Service {
//   void creatUser(
//       {required name, required email, required password, required phone,required address, required type}) async {
//     final docUser = FirebaseFirestore.instance.collection(('user')).doc();
//     final user = User(
//         password: password,
//         email: email,
//         name: name,
//         userid: docUser.id,
//         phone: phone,
//         address: address
//         // type: type
//         );
//     final json = user.toJson();
//     await docUser.set(json);
//   }

//   Stream<List<User>> readUsers() {
//     return FirebaseFirestore.instance.collection('user').snapshots().map(
//         (snapshot) =>
//             snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
//   }

//   void UpdateAdmin({
//     required userId,
//     required name,
//     required email,
//     required password
//   })async {
//     final docUser=FirebaseFirestore.instance.collection(('users')).doc(userId);
//     await docUser.update({"email":email , "name":name , "password":password});
//   }

// }




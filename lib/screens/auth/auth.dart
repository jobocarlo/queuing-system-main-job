import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:queueing_system/models/student.dart';

class AuthFirebase{

  // ignore: unused_field
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Student? _userFromFireBase(User? user) {
    if (user != null) {
      return Student(uid: user.uid);
    } else {
      return null;
    }
  }

  //* Auth Stream
  Stream<Student?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFireBase(user));
  }

  //* Signin Guest
  Future signInGuest() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //* Signin email, pass
  Future signIn(String email, String password) async {
    // try{
    //   AuthRes
    // }
  }
  //* Signup

  //* Signout
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:queueing_system/screens/auth/auth.dart';
import 'package:queueing_system/screens/wrapper.dart';
import 'package:queueing_system/models/student.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Queue());
}
 
class Queue extends StatelessWidget {
  const Queue({super.key});
  
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Student?>.value(
      value: AuthFirebase().user,
      initialData: null,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
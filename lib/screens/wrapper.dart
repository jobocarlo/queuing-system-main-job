import 'package:flutter/material.dart';
import 'package:queueing_system/screens/auth/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:queueing_system/screens/index/home.dart';

import '../models/student.dart';


class Wrapper extends StatefulWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Student?>(context);
    print(user);

    // ignore: unnecessary_null_comparison
    if (user == null) {
      // ignore: prefer_const_constructors
      return Authenticate();
    }
    else{
      // ignore: prefer_const_constructors
      return Home();
    }
  }
}
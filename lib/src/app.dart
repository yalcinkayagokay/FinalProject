import 'package:flutter/material.dart';
import 'package:flutter_app_final3/src/screens/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      title: 'Login App',
      theme: ThemeData(  
        accentColor: Colors.blueGrey,
        primarySwatch: Colors.red
      ),
      home: LoginScreen(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_final3/src/screens/home.dart';

class takipEt extends StatefulWidget {
  @override
  _takipEtState createState() => _takipEtState();
}

class _takipEtState extends State<takipEt> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KURYE TAKİP'),),
      body: Column(
        children: [

          RaisedButton(child: Text('GERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){
            auth.signOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
          },),



        ],),
    );
  }
}
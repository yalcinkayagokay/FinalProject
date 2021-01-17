import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_final3/src/screens/home.dart';

class galeri extends StatefulWidget {
  @override
  _galeriState createState() => _galeriState();
}

class _galeriState extends State<galeri> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
          title: Text('GALERİ'),
        ),
        body: ListView(
          children: [
            RaisedButton(child: Text('GERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
            },),
            Image.asset(
              'assets/images/icmekan1.png',

              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/icmekan2.png',

              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/icmekan3.png',

              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/icmekan4.png',

              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/kurye.png',

              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),

            RaisedButton(child: Text('GERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
            },),
          ],
        ),
      ),
    );
  }
  }


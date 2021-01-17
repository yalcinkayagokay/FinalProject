import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_final3/src/screens/iletisim.dart';
import 'package:flutter_app_final3/src/screens/login.dart';
import 'package:flutter_app_final3/src/screens/siparis.dart';
import 'package:flutter_app_final3/src/screens/takip.dart';
import 'galeri.dart';

class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME'),),
      body: Container(
        child: Center(
          child:
          Image.asset(
            'assets/images/logo.png',
            width: 900,
            height: 640,
            fit: BoxFit.cover,
        ),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              child: Text('ANASAYFA'),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('SEÇENEKLER'),
            ),
            ListTile(
              //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
              title: Column(
                children: [

                  RaisedButton(child: Text('KURYE TAKİP'),color: Colors.black,textColor: Colors.white,onPressed: (){
                    auth.signOut();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => takipEt()));
                  },),
                  RaisedButton(child: Text('SİPARİŞ'),color: Colors.black,textColor: Colors.white,onPressed: (){
                    auth.signOut();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => siparisVer()));
                  },),

                  RaisedButton(child: Text('GALERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){
                    auth.signOut();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => galeri()));
                  },),
                  RaisedButton(child: Text('İLETİŞİM'),color: Colors.black,textColor: Colors.white,onPressed: (){
                    auth.signOut();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => iletisimBilgileri()));
                  },),
                  RaisedButton(child: Text('ÇIKIŞ'),color: Colors.black,textColor: Colors.white,onPressed: (){
                    auth.signOut();
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                  },),



                ],),
            )
          ],
        ),
      ),
    );
  }
}
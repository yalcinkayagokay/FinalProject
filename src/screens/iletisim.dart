import 'package:flutter/material.dart';
import 'package:flutter_app_final3/src/screens/home.dart';

import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(iletisimBilgileri());
}

class iletisimBilgileri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'BERKİN-GÖKAY RESTAURANT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Atakum, Samsun',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('17.993'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          RaisedButton(child: Text('GERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){

            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
          },),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
'-----------------------------------------------------------------------------------------                             '
        'CEP TELEFON NUMARALARIMIZ:                                 '

        'BERKİN ALKAN:            +90 (539) 200 20 25 '
        ''
            '                                  GÖKAY YALÇINKAYA:   +90 (538) 721 60 09'
        '  -----------------------------------------------------------------------------------------'
        'MAİL ADRESLERİMİZ:                                                                       '
        'BERKİN ALKAN:            berkin.alkan@gmail.com                '
        'GÖKAY YALÇINKAYA:  gokay.yalcinkaya@gmail.com                '
        '  -----------------------------------------------------------------------------------------'
        'ADRES:  Güzelyalı, 3021. Sk. No:28/1, 55270            Atakum/Samsun '
        '                                            '
          '-----------------------------------------------------------------------------------------',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
          title: Text('İLETİŞİM'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/iletisim.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
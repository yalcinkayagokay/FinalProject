import 'package:flutter/material.dart';
import 'package:flutter_app_final3/src/screens/home.dart';
import '../../product.dart';

void main() => runApp(siparisVer());

class siparisVer extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sipariş Sayfası',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Product Navigation demo home page'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SİPARİŞ VER")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductBoxList(),
            RaisedButton(child: Text('GERİ'),color: Colors.black,textColor: Colors.white,onPressed: (){

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
            }),
          ],
        )
    );
  }
}
class ProductBoxList extends StatelessWidget {
  final List<Product> items = Product.getList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => ProductPage(item: items[index]),
              ),
              );
            },
          );
        },
      ),
    );
  }
}
class ProductPage extends StatelessWidget {
  ProductPage({Key key, this.item}) : super(key: key);
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.item.name),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/images/" + this.item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.name, style:
                            TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.description),
                            Text("Price: " + this.item.price.toString()),

                          ],
                        )
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);
  final Product item;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2), height: 140,
        child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("assets/images/" + this.item.image),
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(this.item.name, style:TextStyle(fontWeight: FontWeight.bold)),
                            Text(this.item.description),
                            Text("Fiyat: " + this.item.price.toString()),
                            RaisedButton(child: Text('Sepete Ekle'),color: Colors.red,textColor: Colors.white,onPressed: (){
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text("Sipariş Alındı"),));
                            },),


                          ],
                        )
                    )
                )
              ]
          ),
        )
    );
  }
}

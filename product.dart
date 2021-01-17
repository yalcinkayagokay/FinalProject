class Product
{
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  factory Product.fromMap(Map<String, dynamic> json)
  {
    return Product(json['name'], json['description'], json['fiyat'], json['image']);
  }

  factory Product.fromJson(Map<String, dynamic> data)
  {
    return Product(data['name'], data['description'], data['fiyat'], data['image']);
  }

  static List<Product> getList()
  {
    List<Product> data = List();
    data.add(Product( "Menü-1", "Tavuk Burger,Coca-Cola ve Cips", 20, "menu1.png"));
    data.add(Product( "Menü-2", "Vali Kebabı(2 kişiliktir.)", 100, "menu2.png"));
    data.add(Product( "Menü-3", "İzmir Kumru, Coca-Cola ve Cips", 25, "menu3.png"));
    data.add(Product( "Menü-4", "Dana Steak", 45, "menu4.png"));
    data.add(Product( "Menü-5", "Tavuk Izgara ve Salata", 30, "menu5.png"));
    data.add(Product( "Menü-6", "Izgara Köfte,Coca-Cola ve Ezogelin Çorba", 40, "menu6.png"));
    return data;
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Products(),
    );
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final list_item = [
    { "name": "Producto 1", "pic": "lib/assets/images/product1.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 2", "pic": "lib/assets/images/product2.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 3", "pic": "lib/assets/images/product3.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 4", "pic": "lib/assets/images/product4.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 5", "pic": "lib/assets/images/product5.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 6", "pic": "lib/assets/images/product6.jpg", "price": 50, "old_price": 80},
    { "name": "Producto 7", "pic": "lib/assets/images/product7.jpg", "price": 50, "old_price": 80 },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            product_name: list_item[index]['name'],
            product_pic: list_item[index]['pic'],
            product_price: list_item[index]['price'],
            product_old: list_item[index]['old_price'],
          );
        },
      );
    
  }
}

class Product extends StatelessWidget {
  final product_name;
  final product_pic;
  final product_price;
  final product_old;

  Product({this.product_name, this.product_old, this.product_pic, this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text('$product_name', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  title: Text('\$$product_price', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  subtitle: Text('\$$product_price', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough, 
                    color: Colors.redAccent
                    )),
                ),
              ),
              child: Image.asset(product_pic, fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}
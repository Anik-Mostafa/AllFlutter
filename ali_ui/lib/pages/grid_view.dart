import 'package:ali_ui/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Samsung',
      'picture': 'images/g1.png',
      'old_price': 1000,
      'price': 840,
    },
    {
      'name': 'Samsung',
      'picture': 'images/g2.jpg',
      'old_price': 1000,
      'price': 840,
    },
    {
      'name': 'Samsung',
      'picture': 'images/g3.png',
      'old_price': 1000,
      'price': 840,
    },
    {
      'name': 'Samsung',
      'picture': 'images/g4.jpg',
      'old_price': 1000,
      'price': 840,
    },
    {
      'name': 'Samsung',
      'picture': 'images/g5.jpg',
      'old_price': 1000,
      'price': 840,
    },
    {
      'name': 'Samsung',
      'picture': 'images/g6.jpg',
      'old_price': 1000,
      'price': 840,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Singal_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Singal_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Singal_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Text('Hero 1'),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        prod_delails_name: prod_name,
                        prod_delails_picture: prod_picture,
                        prod_delails_old_price: prod_old_price,
                        prod_delails_price: prod_price,
                      ))),
              child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text('\$$prod_price',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w600)),
                      subtitle: Text(
                        '\$$prod_old_price',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            decoration: TextDecoration.lineThrough),
                      ),
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}

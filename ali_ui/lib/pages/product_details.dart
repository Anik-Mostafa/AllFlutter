import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final prod_delails_name;
  final prod_delails_picture;
  final prod_delails_old_price;
  final prod_delails_price;
  ProductDetails(
      {this.prod_delails_name,
      this.prod_delails_picture,
      this.prod_delails_old_price,
      this.prod_delails_price});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_delails_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.prod_delails_name),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.prod_delails_old_price}',
                        ),
                      ),
                      Expanded(
                        child: Text('\$${widget.prod_delails_price}'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

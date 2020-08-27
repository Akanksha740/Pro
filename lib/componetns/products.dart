import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nogozo/pages/shop_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Dominos,Noida",
      "picture": "images/Dominos.jpg",
      "address": "Dominos Noida,Near Jaypee Colllege,842001",
    },
    {
      "name": "Fresh Veggies,Noida",
      "picture": "images/VEG.jpg",
      "address": "C-57,Near SBI,TL Mode,Dwarka Road,843108",
    },
    {
      "name": "Croma,UB Mall",
      "picture": "images/cromaa.jpg",
      "address": "UB City Mall,KT Road,Near Tilak Road,843124",
    },
    {
      "name": "Shree Medicals",
      "picture": "images/medc.jpg",
      "address": "",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_shop(
            shop_name: product_list[index]['name'],
            shop_picture: product_list[index]['picture'],
            shop_addrsss: product_list[index]['address'],
          );
        });
  }
}

class Single_shop extends StatelessWidget {
  final shop_name;
  final shop_picture;
  final shop_addrsss;

  Single_shop({
    this.shop_name,
    this.shop_picture,
    this.shop_addrsss,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: shop_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ShopDetails(
                      shop_detail_name: shop_name,
                      shop_detail_picture: shop_picture,
                      shop_detail_address: shop_addrsss,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    shop_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(
                shop_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

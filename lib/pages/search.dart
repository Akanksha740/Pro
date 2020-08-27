import 'package:flutter/material.dart';
import 'shop_details.dart';

class Shop {
  final String name;
  final String image;
  final String address;
  Shop({this.name, this.image, this.address});
}

List shoplist = [
  Shop(name: 'Croma', image: 'images/Dominos.jpg', address: ''),
  Shop(name: 'Dominos', image: 'images/cromaa.jpg', address: ''),
  Shop(name: 'Fresh Veggies', image: 'images/VEG.jpg', address: ''),
  Shop(name: 'Shree Medicals', image: 'images/medc.jpg', address: ''),
];

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int i;
  List suggestionlist = shoplist;

  void _filter(value) {
    setState(() {
      suggestionlist = value.isEmpty
          ? shoplist
          : shoplist
              .where((element) =>
                  element.name.toLowerCase().contains(value.toLowerCase()))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: x * 0.03, vertical: y * 0.013),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: null,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                        ),
                        onChanged: (value) {
                          _filter(value);
                        },
                      ),
                    )),
              ),
              SizedBox(height: 20),
              for (i = 0; i < suggestionlist.length; i++)
                ShopCard(shop: suggestionlist[i]),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopCard extends StatelessWidget {
  ShopCard({this.shop});
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    double y = MediaQuery.of(context).size.height;
    double x = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (context) => ShopDetails(
                shop_detail_name: shop.name,
                shop_detail_picture: shop.image,
                shop_detail_address: shop.address,
              ))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: x * 0.025, vertical: x * 0.03),
        height: y * 0.1,
        width: x,
        color: Colors.grey,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: x * 0.025),
              height: 45,
              width: 80,
              child: Image.asset(shop.image),
            ),
            Container(
              child: Text(shop.name),
            ),
          ],
        ),
      ),
    );
  }
}

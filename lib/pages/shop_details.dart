import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ShopDetails extends StatefulWidget {
  final shop_detail_name;
  final shop_detail_picture;
  final shop_detail_address;

  ShopDetails({
    this.shop_detail_name,
    this.shop_detail_picture,
    this.shop_detail_address,
  });

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text('NOGOZO'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.shop_detail_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.shop_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
                  ),
                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text(
                          widget.shop_detail_address,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Details")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

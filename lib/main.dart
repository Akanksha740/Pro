import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:nogozo/componetns/horizontal_listview.dart';
import 'package:nogozo/componetns/products.dart';
import 'package:nogozo/pages/cart.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/Grocery.jpg'),
          AssetImage('images/Vegetables.jpg'),
          AssetImage('images/rest.jpg'),
          AssetImage('images/Electronics-Shop.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 8.0,
      ),
    );
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Akanksha'),
              accountEmail: Text('akanksha03@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
              )),
              decoration: new BoxDecoration(color: Colors.blue),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text('Wishlist'),
                  leading: Icon(Icons.favorite),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.person),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ListTile(
                  title: Text('Contact us'),
                  leading: Icon(
                    Icons.phone,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: [
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
          Horizontallist(),
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Search'),
          ),
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
//SEARCH//
//class DataSearch extends SearchDelegate<String> {
// final products = ["Apple", "Banana", "Mango", "Guava", "Pasta"];
//  final recentProducts = [
//  "Apple",
//  "Banana",
// "Mango",
// ];
// @override
//List<Widget> buildActions(BuildContext context) {
//return [
//IconButton(
//icon: Icon(Icons.clear),
// onPressed: () {
// query = "";
// },
// )
//];
// }

//  @override
// Widget buildLeading(BuildContext context) {
// return IconButton(
// icon: AnimatedIcon(
// icon: AnimatedIcons.menu_arrow,
// progress: transitionAnimation,
//  ),
//   onPressed: () {
//    close(context, null);
//  },
// );
// }

// @override
// Widget buildResults(BuildContext context) {}

// @override
// Widget buildSuggestions(BuildContext context) {
// final suggestionlist = query.isEmpty ? recentProducts : products;
// return ListView.builder(
//  itemBuilder: (context, index) => ListTile(
//  leading: Icon(Icons.blur_circular),
//  title: Text(suggestionlist[index]),
//  ),
//  itemCount: suggestionlist.length,
//  );
// }
//}

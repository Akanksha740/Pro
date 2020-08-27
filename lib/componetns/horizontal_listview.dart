import 'package:flutter/material.dart';
import 'package:nogozo/pages/grocery.dart';

class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/Veg.png',
            image_caption: '',
          ),
          Category(
            image_location: 'images/Resturant.png',
            image_caption: '',
          ),
          Category(
            image_location: 'images/bulb.png',
            image_caption: '',
          ),
          Category(
            image_location: 'images/tab.png',
            image_caption: '',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 50.0,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.bottomCenter,
                child: Text(image_caption),
              )),
        ),
      ),
    );
  }
}

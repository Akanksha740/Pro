import 'package:flutter/material.dart';

class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'images/Veg.png',
            image_caption: 'Veggies',
          ),
          Category(
            image_location: 'images/Resturant.png',
            image_caption: 'Resturants',
          ),
          Category(
            image_location: 'images/bulb.png',
            image_caption: 'Electronic',
          ),
          Category(
            image_location: 'images/Gross.webp',
            image_caption: 'Grocery',
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
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
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
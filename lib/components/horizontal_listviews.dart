import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/cat/watch.jpeg',
            image_caption: 'watch',
          ),
          Category(
            image_location: 'assets/cat/backcover.jpg',
            image_caption: 'cover',
          ),
          Category(
            image_location: 'assets/cat/bags.jpeg',
            image_caption: 'bag',
          ),
          Category(
            image_location: 'assets/cat/furniture.jpeg',
            image_caption: 'furniture',
          ),
          Category(
            image_location: 'assets/cat/headphone.jpeg',
            image_caption: 'headphone',
          ),
          Category(
            image_location: 'assets/cat/shoe.jpeg',
            image_caption: 'shoes',
          ),

          Category(
            image_location: 'assets/cat/speaker.jpeg',
            image_caption: 'speaker',
          ),
          Category(
            image_location: 'assets/cat/men.jpg',
            image_caption: 'men-wear',
          ),
          Category(
            image_location: 'assets/cat/women.jpg',
            image_caption: 'women-wear',
          ),
          Category(
            image_location: 'assets/cat/phone.jpeg',
            image_caption: 'mobile',
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
              height: 60.0,
              width: 100.0,
            ),
            subtitle: Container(
                alignment:Alignment.topCenter,
                child: Text(image_caption,),
            ),
          ),
        ),
      ),
    );
  }
}

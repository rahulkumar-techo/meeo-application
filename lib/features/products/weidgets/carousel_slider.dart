import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderExample extends StatelessWidget {
  const CarouselSliderExample({super.key});

  @override
  Widget build(BuildContext context) {
    // List of items to display in the carousel
    final List<String> imgList = [
      'https://unsplash.com',
      'https://unsplash.com',
      'https://unsplash.com',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true, // Automatically slide items
        enlargeCenterPage: true, // Make the center item larger
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        viewportFraction: 0.8,
      ),
      items: imgList
          .map(
            (item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                child: Image.network(item, fit: BoxFit.cover, width: 1000),
              ),
            ),
          )
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Product Listing',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 5,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 3),
          child: ListView(
            children: const <Widget>[
              ProductBox(
                name: "iPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "iphone.jpg",
              ),
              ProductBox(
                name: "Pixel",
                description: "Pixel is the most featurefull phone ever",
                price: 800,
                image: "pixel.jpg",
              ),
              ProductBox(
                name: "Laptop",
                description: "Laptop is most productive development device",
                price: 2000,
                image: "laptop.jpg",
              ),
              ProductBox(
                name: "Tablet",
                description:
                    "Tablet is the most useful device ever for meeting",
                price: 1500,
                image: "tablet.jpg",
              ),
              ProductBox(
                name: "Pendrive",
                description: "Pendrive is great for sharing files.",
                price: 100,
                image: "pendrive.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 140,
              height: double.infinity,
              child: Image.asset(
                "assets/images/$image",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        description,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Price: \$${price.toString()}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

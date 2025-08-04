import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  final String name;
  final int price;
  final String img;

  const DetailProduct({
    super.key,
    required this.name,
    required this.price,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Expanded(
        child: Center(
          child: Column(
            children: [
              Image.network(img, width: 100, height: 100, fit: BoxFit.cover),
              Text(name),
              Text("IDR $price"),
            ],
          ),
        ),
      ),
    );
  }
}

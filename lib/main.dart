import 'package:aplikasi_pertama/views/product_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fesnuk',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        title: Text(
          "Fesnuk MarketPlace",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
        toolbarHeight: 70,
      ),
      body: ProductList()
    );
  }

  Widget cardProduct(String name, int price, String img) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,

      spacing: 10,
      children: [
        Image.network(img, width: 100, height: 100, fit: BoxFit.cover),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
                softWrap: true, // biar teks bisa kebungkus
                overflow: TextOverflow.visible,
              ),
              Text(
                "IDR $price",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shadowColor: null,
                  backgroundColor: Colors.blue,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                label: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget category() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 2,
      runSpacing: 5,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "all",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "Sport",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "Tech",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "Fashion",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: Text(
            "Food",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget categoryScroll() {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}

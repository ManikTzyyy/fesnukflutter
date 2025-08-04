import 'package:aplikasi_pertama/views/detail-product.dart';
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

final String img1 =
    'https://images.unsplash.com/photo-1491553895911-0055eca6402d?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String img2 =
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String img3 =
    'https://images.unsplash.com/photo-1541643600914-78b084683601?q=80&w=704&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

class Product {
  final String title;
  final String img;
  final int price;
  Product({required this.title, required this.price, required this.img});
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Product> products = [
    Product(title: 'Headphone', price: 12141, img: img2),
    Product(title: 'Parfurm', price: 214124, img: img3),
    Product(title: 'Sepatu', price: 12415, img: img1),
  ];

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
      body: Container(
        padding: EdgeInsets.all(10),

        child: Column(
          spacing: 10,
          children: [
            // categoryScroll(),
            Image.network(
              "https://images.unsplash.com/photo-1725189370192-f08430f6928b?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ),

            category(),

            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: 10,
                      children: [
                        Image.network(
                          products[index].img,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                softWrap: true, // biar teks bisa kebungkus
                                overflow: TextOverflow.visible,
                              ),
                              Text(
                                "IDR ${products[index].price}",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shadowColor: null,
                                  backgroundColor: Colors.blue,
                    
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailProduct(name: products[index].title, price: products[index].price, img: products[index].img,)));
                                },
                                label: Text(
                                  "view",
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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

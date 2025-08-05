import 'package:flutter/material.dart';
import 'package:aplikasi_pertama/models/Product.dart';
import 'package:aplikasi_pertama/services/get_data.dart';

class ProductList extends StatefulWidget {
  ProductList({super.key});
  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  Future<List<Product>> products = getProduct();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: products, 
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        } else if(snapshot.hasData){
          final product_snapshot = snapshot.data!;
          return buildProductCard(product_snapshot);
        } else {
          return Center(child: Text("ga ada data ngab"),);
        }
      },);
  }

  Widget buildProductCard(List<Product> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, index) {
        final product = products[index];
        return Container(
          
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 10,
            children: [
              Image.network(
                product.img!,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      softWrap: true, // biar teks bisa kebungkus
                      overflow: TextOverflow.visible,
                    ),
                    Text(
                      "\$ ${product.price}",
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
                      onPressed: () {
                      
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailProduct(name: products[index].title, price: products[index].price, img: products[index].img,)));
                      },
                      label: Text(
                        "view",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Product{
  int? id;
  String? img;
  String? title;
  double? price;

  Product({this.id, this.img, this.title, this.price});

  Product.fromJson(Map<String, dynamic> json){
    id = json['id'];
    img = json['image'];
    title = json['title'];
    price = (json['price'] as num).toDouble();
  }
}
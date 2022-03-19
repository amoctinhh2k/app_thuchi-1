import 'package:sembast/sembast.dart';

class Product {
  int? key;
  String name;
  String price;
  String date;

  Product(
      {this.key, required this.name, required this.price, required this.date});

  Product.fromJson(Map<String, dynamic> json, this.key)
      : name = json['name'] as String,
        price = json['price'] as String,
        date = json['date'] as String;

  Map<String, dynamic> toJson() => {
        'name': name,
        'price': price,
        'date': date,
      };

  Product.fromDatabase(RecordSnapshot<int, Map<String, dynamic>> snapshot)
      : name = snapshot.value['name'] as String,
        price = snapshot.value['price'] as String,
        date = snapshot.value['date'] as String,
        key = snapshot.key;

  @override
  String toString() {
    return "Product { id: $key, Vật phẩm: $name, giá tiền: $price, Ngày mua: $date }";
  }
}

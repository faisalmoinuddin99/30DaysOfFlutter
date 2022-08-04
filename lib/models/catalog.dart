import 'dart:convert';

class CatalogModel {
  static  List<Item> items = [];
}

class Item {
  final int? id;
  final String name;
  final String desc;
  final num price;
  final String? color;
  final String image;

  Item({this.id, required this.name, required this.desc, required this.price, this.color, required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "image": image,
        "desc": desc,
        "price": price,
        "color": color,
      };
}

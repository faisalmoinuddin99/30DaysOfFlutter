class Item {
  late final String? id ;
  late final String? name ;
  late final String? desc ;
  late final num? price ;
  late final String? color ;
  late final String? imageURL ;

  Item({this.id, this.name, this.desc, this.price, this.color, this.imageURL});

}

final products = [Item(
  id: "codepur001",
  name:"iPhone 12 pro",
  desc:"Apple iPhone 12th generation",
  price: 999,
  color:"#33505a",
  imageURL:"https://i.gadgets360cdn.com/products/large/iphone-12-pro-399x800-1602617214.jpg"
)] ;
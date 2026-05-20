class Product {

  final String id;
  final String name;
  final String image;
  final double price;


  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });


  const Product.constProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });


  factory Product.fromJson(Map<String, dynamic> json) {

    return Product(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: json['price'].toDouble(),
    );
  }


  Map<String, dynamic> toJson() {

    return {
      'id': id,
      'name': name,
      'image': image,
      'price': price,
    };
  }


  static List<Product> products = [

    Product(
      id: "P01",
      name: "Apple",
      image: "apple.png",
      price: 10,
    ),

    Product(
      id: "P02",
      name: "Orange",
      image: "orange.png",
      price: 20,
    ),

    Product(
      id: "P03",
      name: "Banana",
      image: "banana.png",
      price: 15,
    ),
  ];
}
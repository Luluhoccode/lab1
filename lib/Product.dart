class Product {
  int id;
  String name;
  String image;
  double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
  });

  // List tĩnh
  static List<Product> productList = [
    Product(
      id: 1,
      name: "Peach",
      image: "peach.png",
      price: 50000,
    ),
    Product(
      id: 2,
      name: "Orange",
      image: "orange.png",
      price: 30000,
    ),
  ];

  // Show all
  static void showAll() {
    for (var p in productList) {
      print(
          "ID: ${p.id} - Name: ${p.name} - Price: ${p.price}");
    }
  }

  // Sort ascending
  static List<Product> sortByPriceAsc() {
    List<Product> list = [...productList];

    list.sort((a, b) => a.price.compareTo(b.price));

    return list;
  }

  // Sort descending
  static List<Product> sortByPriceDesc() {
    List<Product> list = [...productList];

    list.sort((a, b) => b.price.compareTo(a.price));

    return list;
  }

  // Add
  static void addProduct(Product product) {
    productList.add(product);
  }

  // Update
  static void updateProduct(
      int id,
      String newName,
      double newPrice,
      ) {

    for (var p in productList) {

      if (p.id == id) {
        p.name = newName;
        p.price = newPrice;
      }
    }
  }

  // Delete
  static void deleteProduct(int id) {

    productList.removeWhere((p) => p.id == id);
  }

  // Search
  static List<Product> searchByName(String keyword) {

    return productList.where((p) {

      return p.name
          .toLowerCase()
          .contains(keyword.toLowerCase());

    }).toList();
  }
}
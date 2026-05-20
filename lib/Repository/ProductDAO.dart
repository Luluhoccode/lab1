import '../Entity/Product.dart';

class ProductDAO {


  List<Product> getAll() {
    return Product.products;
  }


  void add(Product product) {
    Product.products.add(product);
  }


  void edit(Product product) {

    int index =
    Product.products.indexWhere((p) => p.id == product.id);

    if (index != -1) {
      Product.products[index] = product;
    }
  }


  void delete(String id) {
    Product.products.removeWhere((p) => p.id == id);
  }


  Product? find(String id) {

    try {
      return Product.products
          .firstWhere((p) => p.id == id);

    } catch (e) {
      return null;
    }
  }


  List<Product> search(String keyword) {

    return Product.products.where(
          (p) => p.name
          .toLowerCase()
          .contains(keyword.toLowerCase()),
    ).toList();
  }


  List<Product> sortPriceAsc() {

    List<Product> list = List.from(Product.products);

    list.sort((a, b) => a.price.compareTo(b.price));

    return list;
  }


  List<Product> sortPriceDesc() {

    List<Product> list = List.from(Product.products);

    list.sort((a, b) => b.price.compareTo(a.price));

    return list;
  }


  void increasePrice() {

    Product.products = Product.products.map((p) {

      return Product(
        id: p.id,
        name: p.name,
        image: p.image,
        price: p.price * 1.1,
      );

    }).toList();
  }
}
import 'Entity/Product.dart';
import 'Repository/ProductDAO.dart';

void main() {

  ProductDAO dao = ProductDAO();

  print("===== Product List =====");

  for (var p in dao.getAll()) {
    print("${p.id} - ${p.name} - ${p.price}");
  }


  dao.add(
    Product(
      id: "P04",
      name: "Mango",
      image: "mango.png",
      price: 30,
    ),
  );

  print("\n===== After Add =====");

  for (var p in dao.getAll()) {
    print("${p.id} - ${p.name} - ${p.price}");
  }


  dao.edit(
    Product(
      id: "P01",
      name: "Green Apple",
      image: "apple.png",
      price: 50,
    ),
  );

  print("\n===== After Edit =====");

  for (var p in dao.getAll()) {
    print("${p.id} - ${p.name} - ${p.price}");
  }


  List<Product> result = dao.search("ap");

  print("\n===== Search Result =====");

  for (var p in result) {
    print("${p.name} - ${p.price}");
  }


  Product? found = dao.find("P02");

  print("\n===== Find Product =====");

  if (found != null) {
    print("${found.name} - ${found.price}");
  }


  dao.increasePrice();

  print("\n===== After Increase 10% =====");

  for (var p in dao.getAll()) {
    print("${p.name} - ${p.price}");
  }


  print("\n===== Sort Asc =====");

  for (var p in dao.sortPriceAsc()) {
    print("${p.name} - ${p.price}");
  }


  print("\n===== Sort Desc =====");

  for (var p in dao.sortPriceDesc()) {
    print("${p.name} - ${p.price}");
  }


  dao.delete("P03");

  print("\n===== After Delete =====");

  for (var p in dao.getAll()) {
    print("${p.name} - ${p.price}");
  }
}
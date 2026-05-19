import 'package:flutter/material.dart';
import 'Product.dart';

void main() {

  print("===== List Product =====");
  Product.showAll();

  // Sort ascending
  print("\n===== Ascending Price =====");

  var listAsc = Product.sortByPriceAsc();

  listAsc.forEach((p) {
    print("${p.name} - ${p.price}");
  });

  // Sort descending
  print("\n===== Descending Price =====");

  var listDesc = Product.sortByPriceDesc();

  listDesc.forEach((p) {
    print("${p.name} - ${p.price}");
  });

  // Add
  Product.addProduct(
    Product(
      id: 3,
      name: "Apple",
      image: "apple.png",
      price: 23500,
    ),
  );

  print("\n===== After Add =====");
  Product.showAll();

  // Update
  Product.updateProduct(
    1,
    "Premium Peach",
    60000,
  );

  print("\n===== After Update =====");
  Product.showAll();

  // Delete
  Product.deleteProduct(2);

  print("\n===== After Delete =====");
  Product.showAll();

  // Search
  print("\n===== Search Result =====");

  var searchResults =
  Product.searchByName("Ap");

  if (searchResults.isEmpty) {

    print("Cannot found");

  } else {

    searchResults.forEach((p) {

      print("${p.name} - ${p.price}");

    });
  }
}
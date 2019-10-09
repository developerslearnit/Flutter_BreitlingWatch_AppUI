import 'package:flutter/foundation.dart';

class Product {
  String product_id;
  String product_name;
  String product_price;
  String product_description;
  String product_sm_image;
  String product_bg_image;

  Product(
      {@required this.product_id,
      @required this.product_name,
      @required this.product_price,
      @required this.product_description,
      @required this.product_sm_image,
      @required this.product_bg_image});
}

List<Product> products = [
  Product(
      product_id: 'Prd03',
      product_bg_image: "assets/images/heritage_lg.png",
      product_description:
          "The Breitling Professional collection is purpose-built to meet the extreme demands of the world’s foremost adventurers, specialists, and experts. Feature-laden and designed to excel in the most challenging of conditions, these watches represent the peak of high-performance timekeeping.",
      product_name: '''Breitling Superocean Heritage Mens Watch''',
      product_price: "#5,090.00",
      product_sm_image: "assets/images/heritage.png"),
  Product(
      product_id: 'Prd01',
      product_bg_image: "assets/images/navitimer_lg.png",
      product_description:
          "Ships new in manufacturer box with manuals. Serial and/or case number is intact as it comes from the factory.",
      product_name: '''Breitling Navitimer World Mens Watch''',
      product_price: "#5,090.00",
      product_sm_image: "assets/images/navitimer.png"),
  Product(
      product_id: 'Prd02',
      product_bg_image: "assets/images/superocean_lg.png",
      product_description:
          "It has recently been professionally inspected, time-tested, pressure-tested and polished. Please review the images provided.",
      product_name: '''Breitling Superocean Heritage 46''',
      product_price: "#3,340.00",
      product_sm_image: "assets/images/superocean.png"),
];

List<Product> productLists() {
  return products;
}

Product findById(String id) {
  return products.firstWhere((prod) => prod.product_id == id);
}

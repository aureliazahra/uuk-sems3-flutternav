class Product {
  final String name;
  final String image;
  final double price;
  final double rating;
  final bool inStock;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    this.inStock = true,
  });
}

final List<Product> products = [
  Product(
    name: "Spark",
    image: "assets/images/spark.png",
    price: 90,
    rating: 4.5,
  ),
  Product(
    name: "Magic",
    image: "assets/images/magic.png",
    price: 75,
    rating: 4.2,
  ),
  Product(
    name: "White",
    image: "assets/images/white.png",
    price: 80,
    rating: 4.0,
  ),
];

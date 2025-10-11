class Product {
  final String name;
  final String image;
  final double price;
  final double rating;
  final bool inStock;
  final List<String>? images;

  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    this.inStock = true,
    this.images,
  });
}

final List<Product> products = [
  Product(
    name: "Spark",
    image: "assets/images/spark.png",
    images: [
      "assets/images/spark.png",
      "assets/images/spark.png",
      "assets/images/spark.png",
    ],
    price: 90,
    rating: 4.5,
  ),
  Product(
    name: "Magic",
    image: "assets/images/magic.png",
    images: [
      "assets/images/magic.png",
      "assets/images/magic.png",
      "assets/images/magic.png",
    ],
    price: 75,
    rating: 4.2,
  ),
  Product(
    name: "White",
    image: "assets/images/white.png",
    images: [
      "assets/images/white.png",
      "assets/images/white.png",
      "assets/images/white.png",
    ],
    price: 80,
    rating: 4.0,
  ),
  Product(
    name: "Impression",
    image: "assets/images/impression.png",
    images: [
      "assets/images/impression.png",
      "assets/images/impression.png",
      "assets/images/impression.png",
    ],
    price: 80,
    rating: 4.0,
  ),
  Product(
    name: "Soft",
    image: "assets/images/soft.png",
    images: [
      "assets/images/soft.png",
      "assets/images/soft.png",
      "assets/images/soft.png",
    ],
    price: 80,
    rating: 4.0,
  ),
  Product(
    name: "Authentic",
    image: "assets/images/authentic.png",
    images: [
      "assets/images/authentic.png",
      "assets/images/authentic.png",
      "assets/images/authentic.png",
    ],
    price: 80,
    rating: 4.0,
  ),
];

final Map<String, String> productCategories = {
  "Spark": "wedding",
  "Magic": "wedding",
  "White": "decor",
  "Impression": "decor",
  "Soft": "gift",
  "Authentic": "gift",
};

List<Product> getProductsByCategory(String category) {
  return products.where((p) => productCategories[p.name] == category).toList();
}

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

// 🪷 Daftar produk
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
  Product(
    name: 'Birthday',
    image: "assets/images/bday.jpg",
    price: 200,
    rating: 5.0,
  ),
  Product(
    name: 'Wedding',
    image: "assets/images/weddec.jpg",
    price: 400,
    rating: 4.9,
  ),
  Product(
    name: 'Prom',
    image: "assets/images/promdec.jpg",
    price: 199,
    rating: 4.5,
  ),
  Product(
    name: 'Redbull F! Jacket',
    image: 'assets/images/rb.jpg',
    price: 99,
    rating: 4.9,
  ),
  Product(
    name: 'BMW M4',
    image: 'assets/images/m4.jpg',
    price: 1000,
    rating: 5.0,
  ),
  Product(
    name: 'Mercedez F1 T-Shirt',
    image: 'assets/images/mcdz.jpg',
    price: 70,
    rating: 5.0,
  ),
  Product(
    name: 'Rolex',
    image: 'assets/images/rolex.jpg',
    price: 1000,
    rating: 4.8,
  ),
  Product(
    name: 'White Dress',
    image: 'assets/images/dress.jpg',
    price: 90,
    rating: 4.5,
  ),
];

// 🏷️ Kategori utama (utama) dan subkategori tambahan
final Map<String, Map<String, String>> productCategories = {
  "Spark": {"main": "wedding", "sub": "bouquet"},
  "Magic": {"main": "wedding", "sub": "bouquet"},
  "White": {"main": "wedding", "sub": "decoration"},
  "Impression": {"main": "wedding", "sub": "table"},
  "Soft": {"main": "wedding", "sub": "accessory"},
  "Authentic": {"main": "wedding", "sub": "bouquet"},
  "Birthday": {"main": "decor", "sub": "event"},
  "Wedding": {"main": "decor", "sub": "event"},
  "Prom": {"main": "decor", "sub": "event"},
  "Redbull F! Jacket": {"main": "gift", "sub": "apparel"},
  "BMW M4": {"main": "gift", "sub": "souvenir"},
  "Mercedez F1 T-Shirt": {"main": "gift", "sub": "apparel"},
  "Rolex": {"main": "gift", "sub": "souvenir"},
  "White Dress": {"main": "gift", "sub": "dress"},
};

// filter berdasarkan category n subcategory
List<Product> getProductsByCategory({
  String? mainCategory,
  String? subCategory,
}) {
  return products.where((p) {
    final data = productCategories[p.name];
    if (data == null) return false;

    final matchMain = mainCategory == null ||
        data['main']?.toLowerCase() == mainCategory.toLowerCase();
    final matchSub = subCategory == null ||
        data['sub']?.toLowerCase() == subCategory.toLowerCase();

    return matchMain && matchSub;
  }).toList();
}

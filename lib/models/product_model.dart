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

// 🏷️ Kategori produk berdasarkan nama
final Map<String, String> productCategories = {
  "Spark": "wedding",
  "Magic": "wedding",
  "White": "wedding",
  "Impression": "weddng",
  "Soft": "wedding",
  "Authentic": "wedding",
  'Birthday': 'decor',
  'Wedding': 'decor',
  'Prom': 'decor',
  'Redbull F! Jacket': 'gift',
  'BMW M4': 'gift',
  'Mercedez F1 T-Shirt': 'gift',
  'Rolex': 'gift',
  'White Dress': 'gift',
};

// 🪞 Fungsi filter berdasarkan kategori

List<Product> getProductsByCategory(String category) {
  // pastikan hanya yang sesuai kategori
  return products
      .where(
        (p) =>
            productCategories[p.name]?.toLowerCase() == category.toLowerCase(),
      )
      .toList();
}

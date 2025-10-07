import 'package:flutter/material.dart';
import 'package:uuk_sems3/pages/product_detail_.page.dart';
import '../models/product_model.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bridal Bouquet")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailPage(product: product),
                  ),
                );
              },
              child: Container(
                width: 310,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    // ⬇️ Container gambar (di tengah, rounded)
                    AspectRatio(
                      aspectRatio: 1.2, // biar proporsional
                      child: Container(
                        width: 290,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xfff3f2f7), // abu lembut
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(product.image, fit: BoxFit.cover),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ⬇️ Bagian teks dan rating
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Nama produk + rating
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${product.price.toStringAsFixed(0)}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff9682B6),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color(0xff9682B6),
                                ),
                                onPressed: () {
                                  // aksi saat tombol troli ditekan
                                  // contoh: tambahkan ke keranjang
                                  print("Added ${product.name} to cart");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

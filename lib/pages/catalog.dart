import 'package:flutter/material.dart';
import 'package:uuk_sems3/pages/product_detail_.page.dart';
import '../models/product_model.dart';

class CatalogPage extends StatelessWidget {
  final String? category;
  final String? subCategory;

  const CatalogPage({super.key, this.category, this.subCategory});

  @override
  Widget build(BuildContext context) {
    final List<Product> filteredProducts = getProductsByCategory(
      mainCategory: category,
      subCategory: subCategory,
    );


    return Scaffold(
      appBar: AppBar(
        title: Text(
          category == null
              ? "All Products"
              : "${category![0].toUpperCase()}${category!.substring(1)} Products", //disesuaiin produknya
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: filteredProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final product = filteredProducts[index];
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
                    const SizedBox(height: 5),
                    
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.90,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$${product.price.toStringAsFixed(0)}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff9682B6),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Color(0xff9682B6),
                                  size: 20,
                                ),
                                onPressed: () {
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

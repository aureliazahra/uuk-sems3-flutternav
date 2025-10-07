import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;
  int currentImageIndex = 0;

  final List<String> sliderImages = [
    'assets/images/spark.png',
    'assets/images/spark.png',
    'assets/images/spark.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🔹 Bagian atas: slider gambar
          Stack(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: PageView.builder(
                  itemCount: sliderImages.length,
                  onPageChanged: (index) {
                    setState(() => currentImageIndex = index);
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(sliderImages[index], fit: BoxFit.cover);
                  },
                ),
              ),

              // 🔹 Tombol back (opsional)
              Positioned(
                top: 40,
                left: 16,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              // 🔹 Garis indikator slider
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    sliderImages.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 3,
                        vertical: 8,
                      ),
                      height: 3,
                      width: currentImageIndex == index ? 30 : 12,
                      decoration: BoxDecoration(
                        color: currentImageIndex == index
                            ? const Color(0xff9682B6)
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          // 🔹 Bagian bawah: detail produk
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nama + harga
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "\$${widget.product.price.toStringAsFixed(0)}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9682B6),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    const Divider(),

                    // Availability & rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Availability",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          widget.product.inStock ? "In Stock" : "Out of Stock",
                          style: TextStyle(
                            color: widget.product.inStock
                                ? Colors.green
                                : Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Rating",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              size: 18,
                              color: index < widget.product.rating.round()
                                  ? Colors.amber
                                  : Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Quantity
                    Row(// Quantity
                    

                    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                      "Quantity",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                        const SizedBox(width: 90), // biar posisi rata kiri
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color(0xfff3f2f7), // abu lembut
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Tombol -
                              InkWell(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () {
                                  if (quantity > 1) {
                                    setState(() => quantity--);
                                  }
                                },
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),

                              // Angka quantity
                              Container(
                                width: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  quantity.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              // Tombol +
                              InkWell(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () {
                                  setState(() => quantity++);
                                },
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    // Total
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "\$${(widget.product.price * quantity).toStringAsFixed(0)}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9682B6),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Tombol Add to cart
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff9682B6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                        label: const Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          // aksi add to cart
                          print("Added ${widget.product.name} to cart");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

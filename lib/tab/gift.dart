import 'package:flutter/material.dart';
import 'package:uuk_sems3/widgets/needhelp.dart';
import 'package:uuk_sems3/widgets/other.dart';
import 'package:uuk_sems3/widgets/slider.dart';
import '../models/product_model.dart';

class GiftTab extends StatelessWidget {
  const GiftTab({super.key});

  @override
  Widget build(BuildContext context) {
    final giftProducts = products.skip(2).toList(); // contoh filter produk

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const NeedHelpTemplate(
            title: "Need gift ideas?",
            subtitle: "We’ll help you find the perfect one.",
          ),
          const SizedBox(height: 2),
          const OtherMenuTemplate(
            items: [
              {'image': 'assets/images/acs.png', 'label': 'Accessories'},
              {'image': 'assets/images/bouquet.png', 'label': 'Bouquets'},
              {'image': 'assets/images/white.png', 'label': 'Souvenirs'},
            ],
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Popular Gifts",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          PopularSliderTemplate(products: giftProducts),
        ],
      ),
    );
  }
}

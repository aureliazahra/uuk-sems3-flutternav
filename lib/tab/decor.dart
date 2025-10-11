import 'package:flutter/material.dart';
import 'package:uuk_sems3/widgets/needhelp.dart';
import 'package:uuk_sems3/widgets/other.dart';
import 'package:uuk_sems3/widgets/slider.dart';
import '../models/product_model.dart';

class DecorTab extends StatelessWidget {
  const DecorTab({super.key});

  @override
  Widget build(BuildContext context) {
    final decorProducts = products.take(3).toList(); // contoh filter produk

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const NeedHelpTemplate(
            title: "Need decor help?",
            subtitle: "Ask our designer for ideas!",
          ),
          const SizedBox(height: 2),
          const OtherMenuTemplate(
            items: [
              {'image': 'assets/images/table.png', 'label': 'Table'},
              {'image': 'assets/images/atlas.png', 'label': 'Aisle'},
              {'image': 'assets/images/acs.png', 'label': 'Decor Items'},
            ],
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Top Decoration Picks",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          PopularSliderTemplate(products: decorProducts),
        ],
      ),
    );
  }
}

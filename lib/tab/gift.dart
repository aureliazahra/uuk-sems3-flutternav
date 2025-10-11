import 'package:flutter/material.dart';
import 'package:uuk_sems3/pages/catalog.dart';
import 'package:uuk_sems3/widgets/needhelp.dart';
import 'package:uuk_sems3/widgets/other.dart';
import 'package:uuk_sems3/widgets/slider.dart';

class GiftTab extends StatelessWidget {
  const GiftTab({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const NeedHelpTemplate(
            title: "Need gift ideas?",
            subtitle: "We'll help you find the perfect one.",
          ),
          const SizedBox(height: 2),
          const OtherMenuTemplate(
            items: [
              {
                'image': 'assets/images/all.png',
                'label': 'All',
                'page': const CatalogPage(category: 'gift',),
              },
              {'image': 'assets/images/rb.jpg', 'label': 'Jacket'},
              {'image': 'assets/images/m4.jpg', 'label': 'Car'},
              {'image': 'assets/images/mcdz.jpg', 'label': 'Shirt'},
              {'image': 'assets/images/rolex.jpg', 'label': 'Souvenirs'},
              {'image': 'assets/images/dress.jpg', 'label': 'Dress'},
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
          PopularSliderTemplate(category: "gift"),
        ],
      ),
    );
  }
}

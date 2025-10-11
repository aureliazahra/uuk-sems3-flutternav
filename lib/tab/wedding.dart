import 'package:flutter/material.dart';
import 'package:uuk_sems3/widgets/needhelp.dart';
import 'package:uuk_sems3/widgets/other.dart';
import 'package:uuk_sems3/widgets/slider.dart';
import '../pages/catalog.dart';

class WeddingTab extends StatelessWidget {
  const WeddingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const NeedHelpTemplate(
            title: "Need wedding help?",
            subtitle: "Make an appointment or chat with us.",
          ),
          const SizedBox(height: 2),
          OtherMenuTemplate(
            items: [
              {
                'image': 'assets/images/all.png',
                'label': 'All',
                'page': const CatalogPage(category: 'wedding',),
              },
              {'image': 'assets/images/bouquet.png', 'label': 'Bouquet'},
              {'image': 'assets/images/table.png', 'label': 'Table'},
              {'image': 'assets/images/atlas.png', 'label': 'Aisle'},
              {'image': 'assets/images/acs.png', 'label': 'Accessories'},
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popularity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CatalogPage(category: "wedding"),
                      ),
                    );
                  },
                  child: Text("See all"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          PopularSliderTemplate(category: "wedding"),
        ],
      ),
    );
  }
}

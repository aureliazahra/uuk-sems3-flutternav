import 'package:flutter/material.dart';
import 'package:uuk_sems3/pages/catalog.dart';
import 'package:uuk_sems3/widgets/needhelp.dart';
import 'package:uuk_sems3/widgets/other.dart';
import 'package:uuk_sems3/widgets/slider.dart';

class DecorTab extends StatelessWidget {
  const DecorTab({super.key});

  @override
  Widget build(BuildContext context) {

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
              {
                'image': 'assets/images/all.png',
                'label': 'All',
                'page': const CatalogPage(category: 'decor',),
              },
              {'image': 'assets/images/bday.jpg', 'label': 'Birthday'},
              {'image': 'assets/images/weddec.jpg', 'label': 'Wedding'},
              {'image': 'assets/images/promdec.jpg', 'label': 'Prom'},
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
          PopularSliderTemplate(category: 'decor'),
        ],
      ),
    );
  }
}

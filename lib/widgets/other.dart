import 'package:flutter/material.dart';

class OtherMenu extends StatelessWidget {
  const OtherMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'image': 'assets/images/all.png', 'label': 'All'},
      {'image': 'assets/images/bouquet.png', 'label': 'Bouquet'},
      {'image': 'assets/images/table.png', 'label': 'Table'},
      {'image': 'assets/images/atlas.png', 'label': 'Aisle'},
      {'image': 'assets/images/acs.png', 'label': 'Accessories'},
    ];

    return Center( // ⬅️ Menjadikan seluruh row di tengah
      child: SizedBox(
        height: 100, // cukup tinggi supaya konten punya ruang di tengah
        child: Align(
          alignment: Alignment.center, // ⬅️ Pastikan isi ListView di tengah
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: menuItems.length,
            separatorBuilder: (context, index) => const SizedBox(width: 25),
            itemBuilder: (context, index) {
              final item = menuItems[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center, // ⬅️ teks + gambar di tengah
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      item['image'],
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item['label'],
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

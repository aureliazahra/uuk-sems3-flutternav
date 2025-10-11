import 'package:flutter/material.dart';
import 'package:uuk_sems3/pages/profile.dart';
import 'package:uuk_sems3/tab/decor.dart';
import 'package:uuk_sems3/tab/gift.dart';
import 'package:uuk_sems3/tab/wedding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bar atas: teks FLORIST + ikon profil
                const Center(
                  child: Text(
                    "FLORIST",
                    style: TextStyle(
                      letterSpacing: 4,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Tulisan Welcome!
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.person_outline),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProfilePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Tab bar: Wedding / Decor / Gift
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xfff3f2f7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: false,
                    indicator: BoxDecoration(
                      color: const Color(0xFF9682B6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    tabs: const [
                      Tab(text: "Wedding"),
                      Tab(text: "Decor"),
                      Tab(text: "Gift"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // ✅ Hanya satu TabBarView
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(), // biar hanya bisa klik, gak bisa swipe
        children: const [
          WeddingTab(),
          DecorTab(),
          GiftTab(),
        ],
      ),
    );
  }
}

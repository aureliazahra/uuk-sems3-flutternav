import 'package:flutter/material.dart';

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
        preferredSize: const Size.fromHeight(200),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bar atas: teks FLORIST + ikon profil
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "FLORIST",
                      style: TextStyle(
                        letterSpacing: 4,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ],
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
                        // navigasi ke halaman profil
                        // Navigator.pushNamed(context, '/profile');
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
                    indicatorSize: TabBarIndicatorSize.tab,
                    controller: _tabController,
                    isScrollable: false,
                    indicator: BoxDecoration(
                      color: const Color(0xffa78bfa), // warna ungu lembut
                      borderRadius: BorderRadius.circular(5),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    tabs: [
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Wedding"),
                        ],
                      ),
                      ),
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Decor"),
                        ],
                      ),
                      ),
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Gift"),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      // Isi konten tab
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text("Halaman Wedding")),
          Center(child: Text("Halaman Decor")),
          Center(child: Text("Halaman Gift")),
        ],
      ),
    );
  }
}

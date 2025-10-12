import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            CircleAvatar(
              radius: 55,
              backgroundColor: const Color(0xfff3f2f7),
              backgroundImage: const AssetImage("assets/images/max.jpg"),
            ),
            const SizedBox(height: 15),

            
            const Text(
              "Aurelia Zahra",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "dududumaxverstappen@yuhuuw.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 25),
            const Divider(),

            
            _buildProfileItem(
              icon: Icons.edit_outlined,
              title: "Edit Profile",
              onTap: () {
                
              },
            ),
            _buildProfileItem(
              icon: Icons.lock_outline,
              title: "Change Password",
              onTap: () {},
            ),
            _buildProfileItem(
              icon: Icons.notifications_outlined,
              title: "Notifications",
              onTap: () {},
            ),
            _buildProfileItem(
              icon: Icons.help_outline,
              title: "Help & Support",
              onTap: () {},
            ),

            const Divider(),
            const SizedBox(height: 10),

            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff9682B6),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.logout, color: Colors.white),
                label: const Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xff9682B6)),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}

import 'package:flutter/material.dart';
import '../pages/favorites_page.dart';
import '../pages/settings_page.dart';
import '../pages/about_us_page.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Image.asset(
            'assets/images/huni.png', // Path to your logo
            width: 170, // Adjust size as needed
            height: 170,
            fit: BoxFit.contain,
              ),
            ),
          ),
          _buildDrawerTile(
            context,
            icon: Icons.home,
            label: "Home",
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerTile(
            context,
            icon: Icons.favorite,
            label: "Favorites",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const FavoritesPage()),
            ),
          ),
          _buildDrawerTile(
            context,
            icon: Icons.settings,
            label: "Settings",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsPage()),
            ),
          ),
          _buildDrawerTile(
            context,
            icon: Icons.info,
            label: "About Us",
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AboutUsPage()),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildDrawerTile(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(label, style: TextStyle(color: Colors.white, fontSize: 16)),
      onTap: onTap,
    );
  }
}

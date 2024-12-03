import 'package:flutter/material.dart';
import 'package:minimalist_music_player/pages/favorites_page.dart';
import 'package:minimalist_music_player/pages/settings_page.dart';
import 'package:minimalist_music_player/pages/about_us_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // Custom Logo (huni.png)
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

          // Home tile
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0),
            child: ListTile(
              title: Text(
                "H O M E",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),

          // Favorites tile
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0),
            child: ListTile(
              title: Text(
                "F A V O R I T E S",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              leading: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritesPage(),
                  ),
                );
              },
            ),
          ),

          // Settings tile
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0),
            child: ListTile(
              title: Text(
                "S E T T I N G S",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ),

          // About Us tile
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25.0),
            child: ListTile(
              title: Text(
                "A B O U T  U S",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              leading: Icon(
                Icons.info,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUsPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

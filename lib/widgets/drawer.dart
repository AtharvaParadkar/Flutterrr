import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 255),
              Color.fromARGB(255, 0, 120, 255)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(),
              accountName: const Text(
                'Atharva',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              accountEmail: const Text(
                'atharva@gmail.com',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              currentAccountPicture: Container(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  'https://w7.pngwing.com/pngs/364/361/png-transparent-account-avatar-profile-user-avatars-icon-thumbnail.png',
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.search_sharp),
              title: const Text('Search'),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text('Contact Us'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout_sharp),
              title: const Text('Logout'),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}

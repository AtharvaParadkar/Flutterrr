import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/jhome.dart';
import 'package:flutter_application/Screens/navigation.dart';
import 'package:flutter_application/loginpage.dart';

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
            ListTile(
              onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Navigation())),
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.search_sharp),
              title: const Text('Search'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.call),
              title: Text('Contact Us'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout_sharp),
              title: const Text('Logout'),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Confirm Logout'),
                  content: const Text('Are you sure to Logout!'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                          (Route route) => false,
                        );
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

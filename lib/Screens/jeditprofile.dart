import 'package:flutter/material.dart';

class JayEditProfilePage extends StatelessWidget {
  const JayEditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 265,
              child: Stack(
                children: [
                  Positioned(
                    top: -330,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 650,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 45,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back_ios_new_sharp,
                              size: 15)),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 130,
                    child: CircleAvatar(
                      maxRadius: 45,
                      backgroundImage: NetworkImage(
                        'https://w7.pngwing.com/pngs/364/361/png-transparent-account-avatar-profile-user-avatars-icon-thumbnail.png',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 58,
                    right: 140,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 100,
                    child: Column(
                      children: [
                        Text('Atharva Paradkar',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                        Text('Edit Profile',
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Atharva Paradkar",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'E-mail',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "atharva@gmial.com",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Phone number',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "9855521551",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Account Type',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Mechanic",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

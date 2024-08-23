import 'package:flutter/material.dart';
import 'package:flutter_application/data/jay_dummy_data.dart';

class JayProfilePage extends StatefulWidget {
  const JayProfilePage({super.key});

  @override
  State<JayProfilePage> createState() => _JayProfilePageState();
}

class _JayProfilePageState extends State<JayProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 37,
          width: 95,
          child: Image.asset('assets/images/jaylogo.jpg', fit: BoxFit.fill),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 4.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 140,
            top: 5,
            child: Text(
              'Account',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Positioned(
            top: 33,
            left: 23,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.15,
              child: Card(
                elevation: 10,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Stack(
                  children: [
                    Positioned(
                      top: 7,
                      right: 7,
                      child: Icon(Icons.edit, size: 20),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundImage: NetworkImage(
                              'https://w7.pngwing.com/pngs/364/361/png-transparent-account-avatar-profile-user-avatars-icon-thumbnail.png',
                            ),
                          ),
                          Text(
                            'Atharva Paradkar',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'GOLD \t 1200 POINTS',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 0, 0)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 180,
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(20),
                                  backgroundColor:
                                      const Color.fromARGB(255, 225, 225, 225),
                                  valueColor: AlwaysStoppedAnimation(
                                      Color.fromARGB(255, 255, 255, 0)),
                                  value: 0.7,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Level 2',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 0),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 23,
            bottom: 35,
            child: SizedBox(
              height: 365,
              width: MediaQuery.of(context).size.width / 1.15,
              child: Card(
                elevation: 10,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: ListView.builder(
                  itemCount: account.length,
                  itemBuilder: (ctx, i) => ListTile(
                    title: Text(account[i].AccountOptions),
                    trailing: account[i].AccountIcon,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

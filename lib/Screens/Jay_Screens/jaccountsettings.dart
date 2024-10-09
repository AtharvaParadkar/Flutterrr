import 'package:flutter/material.dart';
import 'package:flutter_application/Screens/Jay_Screens/jprofile.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool darkSwitch = false;
  bool notificationSwitch = false;

  final darkIcon = WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(
          Icons.nightlight_round_sharp,
          color: Colors.white,
        );
      }
      return const Icon(Icons.light_mode_rounded);
    },
  );
  final notficationIcon = WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.notifications_active_sharp);
      }
      return const Icon(Icons.notifications_off_sharp);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Dark Mode',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Switch(
                      value: darkSwitch,
                      activeColor: Colors.black,
                      thumbIcon: darkIcon,
                      onChanged: (bool value) {
                        setState(() {
                          darkSwitch = value;
                          ThemeData(
                            brightness: Brightness.dark,
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Switch(
                      value: notificationSwitch,
                      activeColor: Colors.red,
                      thumbIcon: notficationIcon,
                      onChanged: (bool value) {
                        setState(() {
                          notificationSwitch = value;
                          if (!value) {
                            notificationSwitch = false;
                            Future.delayed(Duration(milliseconds: 500), () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => JayProfilePage()));
                            });
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:onboarding_web_onfi/src/features/home/screens/homepage.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                     
                    },
                    child: Text('Home'),
                  ),
                  TextButton(
                    onPressed: () {
                          context.go("/settings");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SettingsPage()),
                      // );
                    },
                    child: Text('Settings'),
                  ),
                  TextButton(
                    onPressed: () {
                  
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ProfilePage()),
                      // );
                    },
                    child: Text('Profile'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Center(
              child: Text('This is Setting Page'),
            ),
          ),
        ],
      ),
    );
  }
}

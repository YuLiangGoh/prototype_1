import 'package:flutter/material.dart';
import 'package:protptype_1/app/app_global.dart';
import 'package:protptype_1/component/animation/fade_in_widget.dart';
import 'package:protptype_1/component/animation/slide_in_widget.dart';
import 'package:protptype_1/screen/auth/auth_page.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: textStyleW600(fontSize: 20)),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          SlideInWidget(
            index: 0,
            begin: const Offset(-1, 0),
            child: FadeInWidget(
              index: 0,
              child: ListTile(
                leading: const Icon(Icons.settings, color: Colors.grey),
                title: Text(
                  'General',
                  style: textStyleW500(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Handle general settings tap
                },
              ),
            ),
          ),
          const Divider(),
          SlideInWidget(
            index: 1,
            begin: const Offset(-1, 0),
            child: FadeInWidget(
              index: 1,
              child: ListTile(
                leading: const Icon(Icons.security, color: Colors.grey),
                title: Text(
                  'Security',
                  style: textStyleW500(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Handle security settings tap
                },
              ),
            ),
          ),
          const Divider(),
          SlideInWidget(
            index: 2,
            begin: const Offset(-1, 0),
            child: FadeInWidget(
              index: 2,
              child: ListTile(
                leading: const Icon(Icons.notifications, color: Colors.grey),
                title: Text(
                  'Notification',
                  style: textStyleW500(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Handle notification settings tap
                },
              ),
            ),
          ),
          const Divider(),
          SlideInWidget(
            index: 3,
            begin: const Offset(-1, 0),
            child: FadeInWidget(
              index: 3,
              child: ListTile(
                leading: const Icon(
                  Icons.language,
                  color: Colors.grey,
                ),
                title: Text(
                  'Language',
                  style: textStyleW500(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  // Handle language settings tap
                },
              ),
            ),
          ),
          const Divider(),
          SlideInWidget(
            index: 4,
            begin: const Offset(-1, 0),
            child: FadeInWidget(
              index: 4,
              child: ListTile(
                leading: const Icon(Icons.logout, color: Colors.redAccent),
                title: Text(
                  'Logout',
                  style: textStyleW500(
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Logout'),
                        content: const Text('Are you sure you want to logout?'),
                        actions: [
                          TextButton(
                            child: const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Logout'),
                            onPressed: () {
                              // clear every route and push auth page
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const AuthPage(),
                                ),
                                (route) => false,
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

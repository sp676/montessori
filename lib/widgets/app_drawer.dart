import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle home navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Events'),
            onTap: () {
              // Handle events navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.announcement),
            title: const Text('Announcements'),
            onTap: () {
              // Handle announcements navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.child_care),
            title: const Text('Curriculum'),
            onTap: () {
              // Handle curriculum navigation
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              // Handle profile navigation
            },
          ),
        ],
      ),
    );
  }
}

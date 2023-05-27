import 'package:flutter/material.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Fetch announcements data

    return Scaffold(
      appBar: AppBar(
        title: const Text('Announcements'),
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with the actual number of announcements
        itemBuilder: (BuildContext context, int index) {
          // TODO: Build each announcement item
          return ListTile(
            title: Text('Announcement $index'),
          );
        },
      ),
    );
  }
}

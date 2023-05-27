import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Fetch contacts data

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 0, // Replace with the actual number of contacts
        itemBuilder: (BuildContext context, int index) {
          // TODO: Build each contact item
          return ListTile(
            title: Text('Contact $index'),
          );
        },
      ),
    );
  }
}

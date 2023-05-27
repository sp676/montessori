
import 'package:flutter/material.dart';

class User extends ChangeNotifier {
  final String id;
  final String name;
  final String email;
  // Add any additional properties related to the User model

  User({
    required this.id,
    required this.name,
    required this.email,
    // Initialize additional properties here
  });
}

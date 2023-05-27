import 'package:flutter/foundation.dart';

class Helpers {
  static String formatDateTime(DateTime dateTime) {
    // TODO: Implement date and time formatting logic
    // Example: Format DateTime object to a desired format

    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  static void showToast(String message) {
    // TODO: Implement toast message display logic
    // Example: Show a toast message using a Flutter toast package

    // Replace the code below with your preferred method of showing a toast message
    // For example, you can use the fluttertoast package:
    // Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT);
    if (kDebugMode) {
      print('Toast: $message');
    }
  }
}

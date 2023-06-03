import 'package:flutter/material.dart';
import 'package:montessori/utils/colors.dart';
import '../../utils/responsive.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context); // Initialize screen size variables

    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
        backgroundColor: MyColors.primaryColor,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Event Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Event Date: January 1, 2024',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Event Time: 10:00 AM - 12:00 PM',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Event Description:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Vivamus auctor nunc ut nisi consectetur, eu tempor urna '
                  'blandit. Aliquam blandit ligula eu sapien porta, eu rhoncus '
                  'ligula finibus. Aliquam sit amet commodo arcu. Morbi ac '
                  'gravida tellus.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

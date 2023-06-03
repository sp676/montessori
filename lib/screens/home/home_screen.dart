import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:montessori/screens/events/event_details_screen.dart';
import 'package:montessori/utils/colors.dart';
import '../../routes.dart';
import '../../utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context); // Initialize screen size variables

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/logo.jpg'),
                          radius: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Krizal Neupane',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            Divider(
                              height: 6,
                            ),
                            Text('Class: UKG',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Divider(
                              height: 6,
                            ),
                            Text('Roll No: ONE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Get.back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {
                Get.back();
                Get.to(const EventDetailsScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.announcement),
              title: const Text('Announcements'),
              onTap: () {
                Get.back();
                Get.toNamed(Routes.announcements);
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Curriculum'),
              onTap: () {
                Get.back();
                Get.toNamed(Routes.curriculum);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Get.back();
                // Get.toNamed(Routes.);
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: MyColors.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              width: ScreenSize.screenWidth * 0.7,
              // height: ScreenSize.screenHeight * 0.4,
            ),
            Image.asset(
              'assets/images/children1.jpg',
              width: ScreenSize.screenWidth * 0.54,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to the Montessori App!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Content goes here...',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

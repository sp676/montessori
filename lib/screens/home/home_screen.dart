import 'package:flutter/material.dart';
import 'package:montessori/widgets/app_drawer.dart';

// AppDrawer appDrawer = const AppDrawer();


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // void openDrawer(){
  //    Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: [
  //         const DrawerHeader(
  //           decoration: BoxDecoration(
  //             color: Colors.blue,
  //           ),
  //           child: Text(
  //             'Menu',
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 24,
  //             ),
  //           ),
  //         ),
  //         ListTile(
  //           leading: const Icon(Icons.home),
  //           title: const Text('Home'),
  //           onTap: () {
  //             // Handle home navigation
  //           },
  //         ),
  //         ListTile(
  //           leading: const Icon(Icons.calendar_today),
  //           title: const Text('Events'),
  //           onTap: () {
  //             // Handle events navigation
  //           },
  //         ),
  //         ListTile(
  //           leading: const Icon(Icons.announcement),
  //           title: const Text('Announcements'),
  //           onTap: () {
  //             // Handle announcements navigation
  //           },
  //         ),
  //         ListTile(
  //           leading: const Icon(Icons.child_care),
  //           title: const Text('Curriculum'),
  //           onTap: () {
  //             // Handle curriculum navigation
  //           },
  //         ),
  //         ListTile(
  //           leading: const Icon(Icons.person),
  //           title: const Text('Profile'),
  //           onTap: () {
  //             // Handle profile navigation
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       onPressed: openDrawer,
          //       icon: const Icon(Icons.menu),
          //     );
          //   },
          ),
        drawer: const AppDrawer(),
        body: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Drawer Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home'),
//       ),
//       drawer: AppDrawer(), // Add the AppDrawer widget as the drawer
//       body: const Center(
//         child: Text('Home Screen'),
//       ),
//     );
//   }
// }

// class AppDrawer extends StatelessWidget {
//   const AppDrawer({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text(
//               'Menu',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.home),
//             title: Text('Home'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               // Handle home navigation
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.calendar_today),
//             title: Text('Events'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               // Handle events navigation
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.announcement),
//             title: Text('Announcements'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               // Handle announcements navigation
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.child_care),
//             title: Text('Curriculum'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               // Handle curriculum navigation
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text('Profile'),
//             onTap: () {
//               Navigator.pop(context); // Close the drawer
//               // Handle profile navigation
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Montessori App',
      theme: appThemeData,
      initialRoute: Routes.login,
      routes: AppRoutes.routes,
    );
  }
}

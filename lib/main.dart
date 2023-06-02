import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //   providers: [
        //     // Add your providers here
        //     // Example:
        //     // ChangeNotifierProvider(create: (_) => Provider()),
        //   ],
        //   child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Montessori App',
      theme: appThemeData,
      initialRoute: Routes.splash,
      routes: AppRoutes.routes,
    );
  }
}

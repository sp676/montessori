import 'package:flutter/material.dart';
import 'package:montessori/models/child.dart';
import 'package:provider/provider.dart';
import 'package:montessori/models/user.dart';
import 'package:montessori/services/authentication_service.dart';
import 'package:montessori/services/database_service.dart';
import 'package:montessori/services/notification_service.dart';

List<ChangeNotifierProvider<ChangeNotifier>> providers = [
  ChangeNotifierProvider<ChangeNotifier>(
      create: (_) => User(email: '', id: '', name: '')),
  ChangeNotifierProvider<ChangeNotifier>(
      create: (_) => Child(id: '', name: '', age: 20)),
];

List<Provider> services = [
  Provider<AuthenticationService>(create: (_) => AuthenticationService()),
  Provider<DatabaseService>(create: (_) => DatabaseService()),
  Provider<NotificationService>(create: (_) => NotificationService()),
];

import 'package:flutter/material.dart';
import 'package:montessori/screens/authentication/forgot_password.dart';
import 'package:montessori/screens/authentication/otp_screen.dart';
import 'package:montessori/screens/home/curriculam_screen.dart';
import 'package:montessori/screens/splash_screen.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/authentication/registration_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/announcements_screen.dart';
import 'screens/home/progress_screen.dart';
import 'screens/events/calendar_screen.dart';
import 'screens/events/event_details_screen.dart';
import 'screens/messaging/chat_screen.dart';
import 'screens/messaging/contacts_screen.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String forgotpassword = '/forgotpassword';
  static const String otp = '/otp';
  static const String registration = '/registration';
  static const String home = '/home';
  static const String announcements = '/announcements';
  static const String curriculum = '/curriculum';
  static const String progress = '/progress';
  static const String calendar = '/calendar';
  static const String eventDetails = '/eventDetails';
  static const String chat = '/chat';
  static const String contacts = '/contacts';
}

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    Routes.splash: (BuildContext context) => const SplashScreen(),
    Routes.login: (BuildContext context) => const LoginScreen(),
    Routes.forgotpassword: (BuildContext context) => const ForgotPasswordScreen(),
    Routes.otp: (BuildContext context) => const OTPScreen(),
    Routes.registration: (BuildContext context) => const RegisterScreen(),
    Routes.home: (BuildContext context) => const HomeScreen(),
    Routes.announcements: (BuildContext context) => const AnnouncementsScreen(),
    Routes.curriculum: (BuildContext context) => const CurriculumScreen(),
    Routes.progress: (BuildContext context) => const ProgressScreen(),
    Routes.calendar: (BuildContext context) => const CalendarScreen(),
    Routes.eventDetails: (BuildContext context) => const EventDetailsScreen(),
    Routes.chat: (BuildContext context) => const ChatScreen(),
    Routes.contacts: (BuildContext context) => const ContactsScreen(),
  };
}

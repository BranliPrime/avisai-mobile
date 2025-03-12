import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/launch_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/security_pin_screen.dart';
import 'screens/new_password_screen.dart';
import 'screens/security_fingerprint_screen.dart';
import 'screens/home_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/installation_status_screen.dart';
import 'screens/reports_screen.dart';
import 'screens/profile_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/launch': (context) => const LaunchScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/security-pin': (context) => const SecurityPinScreen(),
        '/new-password': (context) => const NewPasswordScreen(),
        '/security-fingerprint': (context) => const SecurityFingerprintScreen(),
        '/home': (context) => const HomeScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/installation-status': (context) => const InstallationStatusScreen(),
        '/reports': (context) => const ReportsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

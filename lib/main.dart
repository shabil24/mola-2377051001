import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/signup_screen.dart';
void main() => runApp(const JustduitApp());

class JustduitApp extends StatelessWidget {
  const JustduitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Justduit',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F6F8),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E88FF),
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: Color(0xFF1E88FF)),
          ),
        ),
      ),
      initialRoute: LoginScreen.route,
      routes: {
        '/': (_) => const LoginScreen(),
        LoginScreen.route: (_) => const LoginScreen(),
        SignupScreen.route: (_) => const SignupScreen(),
      },
    );
  }
}
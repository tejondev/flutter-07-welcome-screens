import 'package:flutter/material.dart';
import 'package:welcome_screen/presentation/screens/home_screen.dart';

import 'presentation/screens/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const WelcomeScreen(),
        "home": (context) => const HomeScreen(),
      },
    );
  }
}

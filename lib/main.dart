import 'package:flutter/material.dart';

import 'ui/screens/home_screen.dart';
import 'ui/screens/login_screen.dart';

void main() {
  runApp(const EggsAndCheese());
}

class EggsAndCheese extends StatelessWidget {
  const EggsAndCheese({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eggs And Cheese',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "login": (context) =>  LoginScreen(),
        "home": (context) =>  HomeScreen(),
      },
        initialRoute: "home"
    );
  }
}

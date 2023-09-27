import 'package:flutter/material.dart';

import 'Screens/home_page.dart';
import 'bottom_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Burada arka plan rengini ayarlayın
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade600,
        ),
      ),
      home: const BottomNavigator(),
    );
  }
}
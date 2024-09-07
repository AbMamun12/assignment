import 'package:flutter/material.dart';
import 'package:my_bag/my_bag_screen.dart';

class MyBagApp extends StatelessWidget {
  const MyBagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyBagScreen(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          bodyMedium: TextStyle(fontSize: 18),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade200,
            foregroundColor: Colors.grey.shade600,
            elevation: 2,
            shadowColor: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}

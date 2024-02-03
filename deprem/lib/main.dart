import 'package:deprem/screens/HomeScreen.dart';
import 'package:deprem/screens/ThingScreen.dart';
import 'package:deprem/screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

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
      routes: {
        '/Home': (context) => HomeScreen(),
        '/Welcome': (context) => WelcomeScreen(),
        '/Things': (context) => ThingScreen(),
      },
      initialRoute: '/Welcome',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}


import 'package:app1/screens/Transactions.dart';
import 'package:app1/screens/studentProfile.dart';
import 'package:flutter/material.dart';
import 'package:app1/screens/Home.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      routes: {
        "/Home": (_) => const Home(),
        "/StudentProfile": (_) => const StudentProfile(),
        "/Transactions": (_) => const Transactions(),
      },
      home: const Home(),
      // home: const Annoncement()

    );
  }
}

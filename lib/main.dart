import 'package:flutter/material.dart';
import 'package:rest/screens/add_task.dart';
import 'package:rest/screens/home_screen.dart';
import 'package:rest/widgets/all_task.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RestAPP',
      // home: HomeScreen(),
      // home: AddTask(),
      home: AllTasks(),
    );
  }
}


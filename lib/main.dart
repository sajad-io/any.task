import 'package:any_task/add_task_page/add_task_page.dart';
import 'package:any_task/my_tasks_page/my_tasks_page.dart';
import 'package:flutter/material.dart';

import 'welcome_page/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyTasksPage(),
      home: AddTaskPage(),
    );
  }
}

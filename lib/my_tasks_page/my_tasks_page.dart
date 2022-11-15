import 'package:any_task/my_tasks_page/task_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../add_task_page/add_task_page.dart';
import '../models/task_model.dart';

// dummy task data
final List<Task> myTasks = [
  Task(
    title: 'Study Flutter with Sajad :)',
    date: DateTime(2022, 10, 12),
    startTime: TimeOfDay(hour: 10, minute: 30),
    endTime: TimeOfDay(hour: 11, minute: 30),
    isDone: true,
  ),
  Task(
    title: 'Meeting with Client',
    date: DateTime(2022, 11, 12),
    startTime: TimeOfDay(hour: 14, minute: 30),
    endTime: TimeOfDay(hour: 15, minute: 0),
  ),
  Task(
    title: 'Daily Project Collab',
    date: DateTime(2022, 12, 13),
    startTime: TimeOfDay(hour: 9, minute: 30),
    endTime: TimeOfDay(hour: 17, minute: 45),
  ),
];

class MyTasksPage extends StatefulWidget {
  MyTasksPage({super.key});

  @override
  State<MyTasksPage> createState() => _MyTasksPageState();
}

class _MyTasksPageState extends State<MyTasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 1,
        title: Text(
          'My Tasks',
          style: GoogleFonts.poppins(
            color: Color(0xFF33364B),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        itemCount: myTasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskListTileWidget(
            task: myTasks[index],
            onCheckboxChanged: (isChecked) {
              setState(() {
                myTasks[index].isDone = isChecked!;
              });
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 12);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddTaskPage()));
        },
        backgroundColor: Color(0xFF4376FE),
        child: const Icon(Icons.add),
      ),
    );
  }
}

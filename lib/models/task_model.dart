import 'package:flutter/material.dart';

class Task {
  final String title;
  bool isDone;
  final DateTime date;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  Task({
    required this.title,
    this.isDone = false,
    required this.date,
    required this.startTime,
    required this.endTime,
  });
}

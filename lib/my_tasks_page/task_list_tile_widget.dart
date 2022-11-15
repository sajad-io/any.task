import 'package:any_task/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TaskListTileWidget extends StatelessWidget {
  final Task task;
  final Function(bool?) onCheckboxChanged;
  const TaskListTileWidget({required this.task, required this.onCheckboxChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: task.isDone ? Color(0xFF000000).withOpacity(0.1) : Color(0xFFFFFFFF),
      ),
      child: Row(
        children: [
          // date
          Container(
            width: 48,
            height: double.infinity,
            decoration: BoxDecoration(
              color: task.isDone
                  ? Color(0xFF000000).withOpacity(0.1)
                  : Color(0xFF00B670).withOpacity(0.38),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  task.date.day.toString(),
                  style: GoogleFonts.brygada1918(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  DateFormat('MMM').format(task.date),
                  style: GoogleFonts.commissioner(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // empty space
          SizedBox(width: 12),
          // task title and time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // title. example: Study Flutter with Sajad :)
                Text(
                  task.title,
                  style: GoogleFonts.commissioner(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF000000).withOpacity(task.isDone ? 0.5 : 1),
                    decoration:
                        task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
                  ),
                ),
                SizedBox(height: 4),
                // start time - end time. example: '12:30 AM — 00:30 PM',
                Text(
                  task.startTime.format(context) + ' — ' + task.endTime.format(context),
                  style: GoogleFonts.commissioner(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.62),
                  ),
                ),
              ],
            ),
          ),
          Checkbox(value: task.isDone, onChanged: (value) => onCheckboxChanged(value)),
        ],
      ),
    );
  }
}

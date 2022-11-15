import 'package:any_task/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TaskListTileWidget extends StatelessWidget {
  final Task task;
  const TaskListTileWidget(this.task);

  @override
  Widget build(BuildContext context) {
    return // List Tile # 1
        Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Color(0xFFFFFFFF),
      ),
      child: Row(
        children: [
          // date
          Container(
            width: 48,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF00B670).withOpacity(0.38),
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
          Checkbox(value: false, onChanged: (value) {}),
        ],
      ),
    );
  }
}

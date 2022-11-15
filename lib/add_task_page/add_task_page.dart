import 'package:any_task/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(title: 'Add New Task', hasBackButton: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title section
            Text(
              'Task Title',
              style: GoogleFonts.roboto(
                color: Color(0xFF33364B),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 17),
            TextField(
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Enter task title here...',
              ),
            ),
            SizedBox(height: 30),
            // date section
            Text(
              'What date would you like to do it?',
              style: GoogleFonts.roboto(
                color: Color(0xFF33364B),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 17),
            // date picker
            Container(
              width: double.infinity,
              height: 60,
              color: Color(0xFFFFFFFF),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    print('date picker tapped');
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 23, vertical: 18),
                    child: Row(
                      children: [
                        Text(
                          'Feb 28, 2023 (Mon)',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Color(0xFF33364B),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/icons/ic_calendar.png',
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // time section
          ],
        ),
      ),
    );
  }
}

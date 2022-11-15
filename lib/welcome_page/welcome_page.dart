import 'package:any_task/my_tasks_page/my_tasks_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF29333E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 61),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Checkbox Icon
                  Image.asset(
                    'assets/icons/ic_app_logo.png',
                    height: 80,
                    width: 80,
                  ),
                  // Empty space between
                  SizedBox(
                    height: 24,
                  ),
                  // any.task text
                  Text(
                    'any.task',
                    style: GoogleFonts.poppins(
                      fontSize: 60,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  // Empty space between
                  SizedBox(
                    height: 24,
                  ),
                  // Get any task done with any.task
                  Text(
                    'Get any task done with any.task',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 65,
              child: ElevatedButton(
                onPressed: () {
                  print('Get Started Button Pressed');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTasksPage()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            // Empty space between
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

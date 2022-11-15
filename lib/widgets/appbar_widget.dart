import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasBackButton;
  const MyAppbar({required this.title, required this.hasBackButton});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      leading: hasBackButton
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF394451),
              ),
            )
          : null,
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 1,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Color(0xFF33364B),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 14.r,
            color: const Color.fromARGB(255, 34, 96, 255),
          ),
        ),
        title: Text(
          'Log In',
          style: GoogleFonts.leagueSpartan(
            fontSize: 24.r,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 34, 96, 255),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(), // Add your body content here
    );
  }
}

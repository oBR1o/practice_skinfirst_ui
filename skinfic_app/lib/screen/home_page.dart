import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:skinfic_app/route/page_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 42.h, right: 30.w, left: 32.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 0.5.r,
                        )),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/persons/person_1.png',
                        width: 40.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 11.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, WelcomeBack',
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 12.r,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 34, 96, 255),
                        ),
                      ),
                      Text(
                        'John Doe',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 14.r,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 27.r,
                    height: 27.r,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 202, 214, 255),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/notification_icon.png',
                        width: 14.r,
                        height: 17.r,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Container(
                    width: 27.r,
                    height: 27.r,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 202, 214, 255),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/setting_icon.png',
                        width: 17.r,
                        height: 17.r,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              child: Column(
                children: [
                  Row(
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
                  SizedBox(height: 23.h),
                  Row(
                    children: [
                      Center(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.stethoscope,
                              size: 18.r,
                              color: const Color.fromARGB(255, 34, 96, 255),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Doctors',
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 12.r,
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 34, 96, 255),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 9.w),
                      Center(
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.heart,
                              size: 18.r,
                              color: const Color.fromARGB(255, 34, 96, 255),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'Favorite',
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 12.r,
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 34, 96, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Container(
                        width: 190.w,
                        height: 33.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23.r),
                          color: const Color.fromARGB(255, 202, 214, 255),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.w), // ระยะห่างซ้ายของ prefixIcon
                              child: Container(
                                width: 26.r,
                                height: 26.r,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/icons/filter_icon.png',
                                    width: 14.r,
                                    height: 9.r,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: GoogleFonts.leagueSpartan(
                                  fontSize: 14.r,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  isDense: true, // ลดความหนาแน่นของ TextField
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 8.w),
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(right: 8.w), // ระยะห่างขวาของ suffixIcon
                            //   child: Container(
                            //     width: 40.r,
                            //     height: 40.r,
                            //     decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       shape: BoxShape.circle,
                            //       border: Border.all(color: Colors.blue, width: 2),
                            //     ),
                            //     child: Center(
                            //       child: Icon(
                            //         Icons.search,
                            //         size: 20.r,
                            //         color: Colors.blue,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
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

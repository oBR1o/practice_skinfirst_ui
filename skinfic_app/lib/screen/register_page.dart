import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skinfic_app/route/page_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 220.h,
              left: 112.w,
              right: 102.w,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/skinfirsts_logo_2.png',
                  width: 130.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 14.h),
                Text(
                  'Skin\nFirts',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 48.r,
                    fontWeight: FontWeight.w100,
                    color: const Color.fromARGB(255, 34, 96, 255),
                    height: 0.9.h, // ปรับระยะห่างระหว่างบรรทัด
                  ),
                ),
                SizedBox(height: 17.h),
                Text(
                  'Dermatology center',
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 12.r,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 34, 96, 255),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 150.h,
              left: 82.w,
              right: 71.w,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, PageRouter.logInPage);
              },
              child: Container(
                width: 207.w,
                height: 45.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 34, 96, 255),
                    borderRadius: BorderRadius.circular(30.r)),
                child: Center(
                  child: Text(
                    'Log In',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 24.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.h,
              left: 82.w,
              right: 71.w,
            ),
            child: GestureDetector(
              onTap:() {
                Navigator.pushReplacementNamed(context, PageRouter.signUpPage);
              },
              child: Container(
                width: 207.w,
                height: 45.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 214, 255),
                    borderRadius: BorderRadius.circular(30.r)),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 24.r,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 34, 96, 255),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

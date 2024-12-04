import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skinfic_app/route/page_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay 5 วินาทีก่อนเปลี่ยนหน้า
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(context, PageRouter.registerPage);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 96, 255),
      body: Padding(
        padding: EdgeInsets.only(top: 309.h, left: 114.w, right: 104.w),
        child: Column(
          children: [
            Image.asset(
              'assets/images/skinfirsts_logo.png',
              width: 130.w,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 19.h),
            Text(
              'Skin\nFirts',
              textAlign: TextAlign.center,
              style: GoogleFonts.leagueSpartan(
                fontSize: 48.r,
                fontWeight: FontWeight.w100,
                color: Colors.white,
                height: 0.9.h, // ปรับระยะห่างระหว่างบรรทัด
              ),
            ),
            SizedBox(height: 17.h),
            Text(
              'Dermatology center',
              style: GoogleFonts.leagueSpartan(
                  fontSize: 12.r,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

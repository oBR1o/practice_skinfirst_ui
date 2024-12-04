import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _isObscured = true;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 34.h, left: 30.w, right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 24.r,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 34, 96, 255),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 12.r,
                      fontWeight: FontWeight.w300,
                      color: const Color.fromARGB(255, 7, 7, 7),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 47.h, left: 30.w, right: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email or Mobile Number',
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    width: 299.r,
                    height: 42.r,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: TextField(
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      decoration: InputDecoration(
                        hintText: 'example@example.com',
                        hintStyle: GoogleFonts.leagueSpartan(
                          fontSize: 20.r,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 128, 156, 255),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Password',
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    width: 299.r,
                    height: 42.r,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: TextField(
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 20.r,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        hintText: 'Your Password',
                        hintStyle: GoogleFonts.leagueSpartan(
                          fontSize: 20.r,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 128, 156, 255),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          top: 5.h,
                          left: 13.w,
                          right: 13.w,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                          icon: Icon(_isObscured
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forget Password',
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 12.r,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 34, 96, 255),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

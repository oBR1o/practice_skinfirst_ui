import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skinfic_app/route/page_router.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
          'New Account',
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
              padding: EdgeInsets.only(
                top: 30.h,
                left: 30.w,
                right: 30.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Full name',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
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
                          bottom: 10.r,
                          left: 13.w,
                          right: 13.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Text(
                    'Password',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
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
                          top: 7.h,
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
                  SizedBox(height: 18.h),
                  Text(
                    'Email',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
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
                  SizedBox(height: 18.h),
                  Text(
                    'Mobile Number',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
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
                        hintText: 'xxxxxxxxxx',
                        hintStyle: GoogleFonts.leagueSpartan(
                          fontSize: 20.r,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 128, 156, 255),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 13.r,
                          right: 13.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Text(
                    'Date of Birth',
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
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
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter
                            .digitsOnly, // รับเฉพาะตัวเลข
                        DateInputFormatter(), // ฟอร์แมตให้มี "/"
                      ],
                      decoration: InputDecoration(
                        hintText: 'DD/MM/YYYY',
                        hintStyle: GoogleFonts.leagueSpartan(
                          fontSize: 20.r,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 34, 96, 255),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 13.w,
                          right: 13.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to',
                  style: GoogleFonts.leagueSpartan(
                    fontSize: 12.r,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 7, 7, 7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of Use',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12.r,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 34, 96, 255),
                      ),
                    ),
                    Text(
                      ' and ',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12.r,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(255, 7, 7, 7),
                      ),
                    ),
                    Text(
                      'Privacy Policy.',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12.r,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 34, 96, 255),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 4.h, left: 30.w, right: 30.w, bottom: 20.h),
              child: Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, PageRouter.logInPage);
                      },
                      child: Container(
                        width: 207.r,
                        height: 45.r,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 34, 96, 255),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 24.r,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'or sign up with',
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 12.r,
                        fontWeight: FontWeight.w300,
                        color: const Color.fromARGB(255, 7, 7, 7),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      width: 138.r,
                      height: 40.r,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconFromeImage(
                            imageIcon: 'assets/icons/google_icon.png',
                            widthIcon: 18,
                            heightIcon: 18,
                          ),
                          IconFromeImage(
                            imageIcon: 'assets/icons/facebook_icon.png',
                            widthIcon: 18,
                            heightIcon: 18,
                          ),
                          IconFromeImage(
                            imageIcon: 'assets/icons/fingerprint_icon.png',
                            widthIcon: 18,
                            heightIcon: 18,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 38.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'already have an account? ',
                          style: GoogleFonts.leagueSpartan(
                            fontSize: 12.r,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromARGB(255, 7, 7, 7),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, PageRouter.logInPage);
                          },
                          child: Text(
                            'Log in',
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 12.r,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 34, 96, 255),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // เอาเฉพาะตัวเลขจากข้อความใหม่
    final text = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // ฟอร์แมตข้อความเป็น "DD / MM / YYYY"
    String formatted = '';
    for (int i = 0; i < text.length; i++) {
      if (i == 2 || i == 4) {
        formatted += ' / '; // ใส่ "/" หลังจากวันที่และเดือน
      }
      formatted += text[i];
    }

    // ตัดข้อความเกิน 10 ตัวอักษร (DD / MM / YYYY)
    if (formatted.length > 14) {
      formatted = formatted.substring(0, 14);
    }

    // คืนค่าข้อความใหม่
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class IconFromeImage extends StatelessWidget {
  final String imageIcon;
  final int widthIcon;
  final int heightIcon;

  const IconFromeImage({
    super.key,
    required this.imageIcon,
    required this.widthIcon,
    required this.heightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.r,
      height: 40.r,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 202, 214, 255),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          imageIcon,
          width: widthIcon.r,
          height: heightIcon.r,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

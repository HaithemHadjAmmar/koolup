// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color koolColor = Color(0xFF341748);

const String baseURL = "http://10.0.2.2:8000/api/"; //emulator localhost
//const String baseURL = "http://192.168.1.100:8000/api/"; //device localhost
const Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: koolColor,
    content: Text(
      text,
      style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w700),
    ),
    duration: const Duration(seconds: 2),
  ));
}

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 62.h,
      margin: EdgeInsets.fromLTRB(
          24.w, 0, 24.w, 0), // Adjust top and left margin as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFFFF7622),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              Colors.transparent), // Set button background color to transparent
          elevation:
          MaterialStateProperty.all(0), // Remove button elevation
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

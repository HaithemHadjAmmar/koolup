import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// Define the color feb502
Color koolColor = Color(0xFF341748);

const String baseURL = "http://10.0.2.2:8000/api/"; //emulator localhost
//const String baseURL = "http://192.168.1.100:8000/api/"; //device localhost
const Map<String, String> headers = {"Content-Type": "application/json"};

errorSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.red,
    content: Text(text,
      style: GoogleFonts.roboto(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400
      ),
    ),
    duration: const Duration(seconds: 2),
  ));
}
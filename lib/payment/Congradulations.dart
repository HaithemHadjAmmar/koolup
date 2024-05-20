import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constantes.dart';

class CongradulationsScreen extends StatefulWidget {
  const CongradulationsScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CongradulationsScreenState createState() => _CongradulationsScreenState();
}

class _CongradulationsScreenState extends State<CongradulationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 120.h),
              Image.asset(
                'assets/cong.png',
                fit: BoxFit.contain,
                height: 200.h,
              ),
              SizedBox(height: 20.h),
              Text(
                'Congratulations!',
                style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'You successfully made a payment, enjoy our service!',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 200.h),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  buttonText: 'Track Order',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearshCardComponent extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;

  const SearshCardComponent({
    Key? key,
    required this.image,
    required this.foodName,
    required this.restauName,
  }) : super(key: key);

  @override
  State<SearshCardComponent> createState() => _SearshCardComponentState();
}

class _SearshCardComponentState extends State<SearshCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 160.w,
          height: 190.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  widget.image,
                  height: 120.h,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                widget.foodName,
                style: GoogleFonts.poppins(
                    fontSize: 12.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Text(
                    widget.restauName,
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

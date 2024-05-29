// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constantes.dart';
import '../MapComponent/MapComponent.dart';

class Addnewaddress extends StatefulWidget {
  const Addnewaddress({Key? key}) : super(key: key);

  @override
  State<Addnewaddress> createState() => _AddnewaddressState();
}

class _AddnewaddressState extends State<Addnewaddress> {
  String selectedLabel = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Stack(
              children: [
                Positioned.fill(
                  child: MyMapComponent(),
                ),
                Positioned(
                  top: 30.h,
                  left: 10.w,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30.w),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ADDRESS',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF0F5FA),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STREET',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFF0F5FA),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                keyboardType: TextInputType.datetime,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                                  LengthLimitingTextInputFormatter(7),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'POST CODE',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFF0F5FA),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(3),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'LABEL AS',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildLabelCircle('Home'),
                        _buildLabelCircle('Work'),
                        _buildLabelCircle('Other'),
                      ],
                    ),
                    SizedBox(height: 35.h),
                    CustomButton(
                      onPressed: () {},
                      buttonText: 'SAVE LOCATION',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLabelCircle(String label) {
    bool isSelected = selectedLabel == label;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLabel = label;
        });
      },
      child: Container(
        width: 94.w,
        height: 45.h,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFF7622) : Color(0xFFF0F5FA),
          borderRadius: BorderRadius.circular(22.5.r),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
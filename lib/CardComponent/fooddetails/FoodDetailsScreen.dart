// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;

  const FoodDetailsScreen({
    Key? key,
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: Text(
          'Details',
          style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'food_image_${UniqueKey().toString()}',
                      child: Image.asset(
                        image,
                        width: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/elipse.png',
                          width: 30.w,
                          fit: BoxFit.fitHeight,
                        ),
                        SizedBox(width: 5.w),
                        Padding(
                          padding: EdgeInsets.only(top: 3.h),
                          child: Text(
                            restauName,
                            style: GoogleFonts.poppins(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodName,
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          '2 filets de poulet épicés, laitue, fromage cheddar, sauce chili, sauce mayonnaise, 1 moyenne frite, canette au choix',
                          style: GoogleFonts.poppins(
                              fontSize: 14.sp, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Text(
                            'SIZE:',
                            style: GoogleFonts.sen(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFE2703D),
                            borderRadius: BorderRadius.circular(80.r),
                          ),
                          child: Center(
                            child: Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          // Added container for price and button
          Container(
            width: double.infinity,
            height: 160.h,
            decoration: BoxDecoration(
              color: Color(0xFFF0F5FA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Text(
                        'Price: ${price.toStringAsFixed(2)}DT',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 30.w),
                    Container(
                      width: 48.w,
                      height: 125.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF121223),
                        borderRadius: BorderRadius.circular(50.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x000000).withOpacity(0.04), // Drop shadow color
                            offset: Offset(0, 12), // Drop shadow offset
                            blurRadius: 20, // Drop shadow blur radius
                            spreadRadius: 0, // Drop shadow spread radius
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Implement decrease action
                            },
                            icon: Icon(Icons.remove, color: Colors.white),
                          ),
                          Text(
                            '10', // Placeholder for the number
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              // Implement increase action
                            },
                            icon: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.sp),
                Container(
                  width: 327.w,
                  height: 62.h,
                  margin: EdgeInsets.fromLTRB(
                      24.w, 0, 24.w, 0), // Adjust top and left margin as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xFFFF7622),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement button action (e.g., add to cart, order now)
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors
                          .transparent), // Set button background color to transparent
                      elevation: MaterialStateProperty.all(
                          0), // Remove button elevation
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                    ),
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

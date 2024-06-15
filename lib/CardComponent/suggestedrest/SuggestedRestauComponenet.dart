// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../nextRestaurantScreen/NextRestaurantScreen.dart';

class SuggestedResComponenet extends StatelessWidget {
// Add properties for image path, resName, and review
  final String imagePath;
  final String resName;
  final String review;

  const SuggestedResComponenet({
    Key? key,
    required this.imagePath,
    required this.resName,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => NextRestaurantScreen(
            image: imagePath,
            title: resName,
            review: review,
            subtitle: 'Rose Garden restaurant',
            delivery: 'Free',
            time: '30 min',
          ),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 300),
        );
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align content at the top
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners for image
                child: Image.asset(
                  imagePath,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 10.0), // Spacing between image and text
              Expanded(
                // Column takes up remaining space
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      resName,
                      style: GoogleFonts.sen(
                          fontSize: 16.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5.h),
                    Row(children: [
                      Icon(Icons.star_outline_outlined,
                          color: Color(0xFFFF7622), size: 30.w),
                      SizedBox(width: 2.w),
                      Text(
                        review,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Divider(
            thickness: 1.0,
            color: Colors.grey,
// Use FractionallySizedBox for 70% width
            endIndent: MediaQuery.of(context).size.width * 0.1,
          ),
        ],
      ),
    );
  }
}

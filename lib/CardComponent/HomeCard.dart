// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../nextRestaurantScreen/NextRestaurantScreen.dart';

class HomeCard extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String review;
  final String delivery;
  final String time;

  const HomeCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.review,
    required this.delivery,
    required this.time,
  }) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => NextRestaurantScreen(
            image: widget.image,
            title: widget.title,
            subtitle: widget.subtitle,
            review: widget.review,
            delivery: widget.delivery,
            time: widget.time,
          ),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 300),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'restaurant_image_${widget.image}',
              child: Image.asset(
                widget.image,
                width: 500.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      widget.subtitle,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Row(
                children: [
                  Row(children: [
                    Icon(Icons.star_outline_outlined,
                        color: Color(0xFFFF7622), size: 30.w),
                    SizedBox(width: 2.w),
                    Text(
                      widget.review,
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  SizedBox(width: 15.w),
                  Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined,
                          color: Color(0xFFFF7622), size: 30.w),
                      SizedBox(width: 2.w),
                      Text(
                        widget.delivery,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15.w),
                  Row(
                    children: [
                      Icon(Icons.access_time,
                          color: Color(0xFFFF7622), size: 30.w),
                      SizedBox(width: 2.w),
                      Text(
                        widget.time,
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

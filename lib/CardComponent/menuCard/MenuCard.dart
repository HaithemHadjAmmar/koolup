// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:koolup/payment/MyCartScreen.dart';
import '../fooddetails/FoodDetailsScreen.dart';

class MenuCardComponent extends StatelessWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;

  const MenuCardComponent({
    Key? key,
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(FoodDetailsScreen(
          image: image,
          foodName: foodName,
          restauName: restauName,
          price: price,
        ), transition: Transition.fadeIn,
          duration: Duration(milliseconds: 300),
        );
      },
      child: Container(
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
                 child: Hero(
                   tag: 'food_image_${UniqueKey().toString()}',
                  child: Image.asset(
                    image,
                    height: 120.h,
                    width: 60.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                SizedBox(height: 5.h),
                Text(
                  foodName,
                  style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5.h),
                Text(
                  restauName,
                  style: GoogleFonts.poppins(fontSize: 12.sp, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      '${price.toStringAsFixed(2)}DT',
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 22.w),
                    IconButton(
                      onPressed: () {
                        Get.to(
                        MyCartScreen(
                          image: image,
                          foodName: foodName,
                          restauName: restauName,
                          price: price,
                          totalPrice: price,
                          quantity: 1,
                        ), transition: Transition.fadeIn,
                          duration: Duration(milliseconds: 300),
                        );
                      },
                      icon: Icon(Icons.add_circle, color: Color(0xFFFF7622), size: 40.w),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

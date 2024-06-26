import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../CardComponent/menuCard/MenuCard.dart';
import '../cerclerestaurent/CercleRestaurent.dart';

class NextRestaurantScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String review;
  final String delivery;
  final String time;

  const NextRestaurantScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.review,
    required this.delivery,
    required this.time,
  }) : super(key: key);

  void addToCart(String image, String foodName, String restauName, double price) {
    // Handle adding item to cart here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'restaurant_image_$image',
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24.r),
                bottomRight: Radius.circular(24.r),
              ),
              child: Image.asset(
                width: double.infinity,
                height: 321.h,
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 35.h,
            left: 20.w,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 30.w,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 240.w),
                IconButton(
                  icon: const Icon(Icons.more_horiz),
                  color: Colors.white,
                  iconSize: 35.w,
                  onPressed: () {
                    // Add onPressed function for menu icon
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 330.h, left: 10.w),
            child: Row(
              children: [
                Row(children: [
                  Icon(Icons.star_outline_outlined,
                      color: Color(0xFFFF7622), size: 30.w),
                  SizedBox(width: 3.w),
                  Text(
                    review,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ]),
                SizedBox(width: 20.w),
                Row(
                  children: [
                    Icon(Icons.delivery_dining_outlined,
                        color: Color(0xFFFF7622), size: 30.w),
                    SizedBox(width: 3.w),
                    Text(
                      delivery,
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20.w),
                Row(
                  children: [
                    Icon(Icons.access_time,
                        color: Color(0xFFFF7622), size: 30.w),
                    SizedBox(width: 3.w),
                    Text(
                      time,
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
          Padding(
            padding: EdgeInsets.only(top: 325.w, left: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kToolbarHeight.h),
                Text(
                  title,
                  style: GoogleFonts.sen(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  subtitle,
                  style: GoogleFonts.sen(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 415.h,
            left: 0,
            right: 0,
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TitleComponent(title: 'Burger'),
                  TitleComponent(title: 'Sandwish'),
                  TitleComponent(title: 'Pizza'),
                  TitleComponent(title: 'Makloub'),
                ],
              ),
            ),
          ),
          Positioned(
            top: 440.h,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  GridView.count(
                    // Set a fixed height for the GridView
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.w,
                    // Adjust height based on your needs (e.g., 200.h)
                    childAspectRatio: 1.0, // Adjust according to your needs
                    children: const [
                      MenuCardComponent(
                        image: 'assets/sunrise.png',
                        foodName: 'Crispy Chiken Burger',
                        restauName: 'Baguette & Bageutte',
                        price: 12.99,

                      ),
                      MenuCardComponent(
                        image: 'assets/sunrise.png',
                        foodName: 'Sunrise Burger',
                        restauName: 'Baguette & Bageutte',
                        price: 5.99,

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

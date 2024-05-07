// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../Constantes.dart';

class FoodDetailsScreen extends StatefulWidget {
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
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int quantity = 1;
  late int selectedQuantity;
  late double totalPrice;

  @override
  void initState() {
    super.initState();
    selectedQuantity = quantity;
    totalPrice = widget.price * selectedQuantity;
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
      selectedQuantity = quantity;
      totalPrice = widget.price * selectedQuantity;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        selectedQuantity = quantity;
        totalPrice = widget.price * selectedQuantity;
      });
    }
  }

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
      body: WillPopScope(
        onWillPop: () async {
          return false;
    },
    child: Column(
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
                      widget.image,
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
                          widget.restauName,
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
                        widget.foodName,
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
                        height: 38.h,
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
                ],
              ),
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
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return Text(
                            'Price: ${totalPrice.toStringAsFixed(2)}DT',
                            style: GoogleFonts.sen(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 60.w),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Container(
                          width: 125.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: Color(0xFF121223),
                            borderRadius: BorderRadius.circular(50.r),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x000000).withOpacity(0.04),
                                offset: Offset(12, 0),
                                blurRadius: 20,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: decrementQuantity,
                                icon: Icon(Icons.remove, color: Colors.white),
                              ),
                              const Spacer(),
                              Text(
                                quantity.toString(),
                                style: GoogleFonts.sen(
                                  color: Colors.white,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: incrementQuantity,
                                icon: Icon(Icons.add, color: Colors.white),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 22.sp),

                CustomButton(
                  onPressed: () {
                    // Implement button action (e.g., add to cart, order now)
                  },
                  buttonText: 'ADD TO CART',
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}


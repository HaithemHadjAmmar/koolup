// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../Constantes.dart';

class MyCartScreen extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;
  final double totalPrice;
  final int quantity;

  MyCartScreen({
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
    required this.totalPrice,
    required this.quantity,
  });

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  late int selectedQuantity;
  late double totalPrice;

  @override
  void initState() {
    super.initState();
    selectedQuantity = widget.quantity;
    totalPrice = widget.totalPrice;
  }

  void incrementQuantity() {
    setState(() {
      selectedQuantity++;
      totalPrice = widget.totalPrice * selectedQuantity;
    });
  }

  void decrementQuantity() {
    if (selectedQuantity > 1) {
      setState(() {
        selectedQuantity--;
        totalPrice = widget.totalPrice * selectedQuantity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: koolColor,
      appBar: AppBar(
        backgroundColor: koolColor,
        scrolledUnderElevation: 0,
        centerTitle: false,
        title: Text(
          'Cart',
          style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w, color: Colors.white,),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Image.asset(widget.image),
                  SizedBox(height: 10),
                  Text('Food Name: ${widget.foodName}'),
                  Text('Restaurant Name: ${widget.restauName}'),
                  Text('Total Price: $totalPrice'),
                ],
              ),
            ),
          ),
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
                        'Price: ${totalPrice.toStringAsFixed(2)}DT',
                        style: GoogleFonts.sen(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 60.w),
                    Container(
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
                            selectedQuantity.toString(),
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
                    ),
                  ],
                ),

                SizedBox(height: 22.sp),

                CustomButton(
                  onPressed: () {
                    //addToCart(context, widget.image, widget.foodName, widget.restauName);
                  },
                  buttonText: 'ADD TO CART',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

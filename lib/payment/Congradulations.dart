import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constantes.dart';
import 'TrackOrder.dart';

class CongradulationsScreen extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;
  final double totalPrice;
  final int quantity;

  const CongradulationsScreen({
    Key? key,
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
    required this.totalPrice,
    required this.quantity
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
                  onPressed: () {
                    Get.to(
                          () => TrackOrder(
                              image: widget.image,
                              foodName: widget.foodName,
                              restauName: widget.restauName,
                              price: widget.price,
                              totalPrice: widget.totalPrice,
                              quantity: widget.quantity
                          ),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 300),
                    );
                  },
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


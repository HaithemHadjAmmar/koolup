// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constantes.dart';
import 'Congradulations.dart';
import 'FormulaireCartScreen.dart';

class PaymentMethodScreen extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;
  final double totalPrice;
  final int quantity;

  const PaymentMethodScreen({
    super.key,
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
    required this.totalPrice,
    required this.quantity,
  });

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment', style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPaymentMethodContainer(context, 'assets/delevry.png', 'Cash en Delivry'),
                  _buildPaymentMethodContainer(context, 'assets/visa.png', 'Visa'),
                  _buildPaymentMethodContainer(context, 'assets/mcard.png', 'MasterCard'),
                  _buildPaymentMethodContainer(context, 'assets/pypal.png', 'PayPal'),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            if (_selectedPaymentMethod == 'MasterCard') ...[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/cart.png',
                      width: 290.w,
                    ),
                    SizedBox(height: 5.h),
                    Column(
                      children: [
                        Text(
                          'No Master Card Added',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 3.h),
                        Center(
                          child: Text(
                            'You can add a mastercard and save it for later',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              Positioned(
                top: 516.h,
                left: 24.w,
                child: SizedBox(
                  width: 327.w,
                  height: 62.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    onPressed: () {
                      Get.to(
                            () => FormulaireCartScreen(
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
                    child: Text(
                      'Add new',
                      style: GoogleFonts.sen(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF7622),
                      ),
                    ),
                  ),
                ),
              ),

             SizedBox(height: 30.h),

               Column(
                 children: [
                   Text(
                     'TOTAL: ${widget.totalPrice.toStringAsFixed(2)}DT',
                     style: GoogleFonts.sen(
                       fontSize: 18.sp,
                       fontWeight: FontWeight.w600,
                     ),
                   ),

                 SizedBox(height: 22.h),

                 CustomButton(
                   onPressed: () {
                     Get.to(
                           () => CongradulationsScreen(
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
                   buttonText: 'PAY & CONFIRM',
                 ),
                 ],
               )
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodContainer(BuildContext context, String imagePath, String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPaymentMethod = text;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        width: 85.w,
        height: 72.h,
        decoration: BoxDecoration(
          color: Color(0xFFF0F5FA),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 40.w, height: 40.h, fit: BoxFit.contain),
            SizedBox(height: 8.h),
            Text(
              text,
              style: GoogleFonts.sen(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../MapComponent/MapComponent.dart';

class TrackOrder extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double price;
  final double totalPrice;
  final int quantity;

  const TrackOrder({
    Key? key,
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
    required this.totalPrice,
    required this.quantity,
  }) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Track Order',
          style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w),
          onPressed: () => Get.back(),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: MyMapComponent(),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x263A7799),
                    offset: Offset(0, -2),
                    blurRadius: 40,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                  ),
                  ListTile(
                    leading: Image.asset(widget.image, width: 100.w, height: 100.h, fit: BoxFit.cover),
                    title: Text(widget.foodName, style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w600)),
                    subtitle: Text(widget.restauName, style: GoogleFonts.sen(fontSize: 14.sp)),

                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Price:',
                          style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '${widget.totalPrice.toStringAsFixed(2)}DT',
                          style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Quantity:',
                          style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '${widget.quantity}',
                          style: GoogleFonts.sen(fontSize: 16.sp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
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



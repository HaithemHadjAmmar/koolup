// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class MyCartScreen extends StatefulWidget {
  final String image;
  final String foodName;
  final String restauName;
  final double totalPrice;

  MyCartScreen({
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.totalPrice,
  });

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int quantity = 1;
  late int selectedQuantity;
  late double totalPrice;

  @override
  void initState() {
    super.initState();
    selectedQuantity = quantity;
    totalPrice = widget.totalPrice;
  }

  void incrementQuantity() {
    setState(() {
      quantity++;
      selectedQuantity = quantity;
      totalPrice = widget.totalPrice * selectedQuantity;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
        selectedQuantity = quantity;
        totalPrice = widget.totalPrice * selectedQuantity;
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
          'Cart',
          style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
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
    );
  }
}

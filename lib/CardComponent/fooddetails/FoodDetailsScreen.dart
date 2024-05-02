
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class FoodDetailsScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details',
          style: GoogleFonts.sen(fontSize: 17.sp, fontWeight: FontWeight.w600)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded, size: 25.w),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Hero(
                tag: 'food_image_${UniqueKey().toString()}',
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
            Text(
              restauName,
              style: GoogleFonts.poppins(fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20.0),
            Text(
              foodName,
              style: GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 20.0),
            Row(
              children: [
                Text(
                  'Price: ${price.toStringAsFixed(2)}DT',
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                 // Implement button action (e.g., add to cart, order now)
              },
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


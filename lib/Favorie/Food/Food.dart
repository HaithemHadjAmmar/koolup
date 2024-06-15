// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constantes.dart';
import '../../CustomButtons.dart';

class FoodListWidget extends StatefulWidget {
  const FoodListWidget({super.key});

  @override
  _FoodListWidgetState createState() => _FoodListWidgetState();
}

class _FoodListWidgetState extends State<FoodListWidget> {
  final List<FoodItem> foodItems = [
    FoodItem(
      image: 'assets/pizza.png',
      foodName: 'Pizza 4 season',
      restauName: 'Pizza Hut',
      price: 11.000,
      totalPrice: 19.98,
      quantity: 01,
    ),
  ];

  // Map to track favorite status
  Map<int, bool> favoriteMap = {};

  void toggleFavorite(int index) {
    setState(() {
      favoriteMap[index] = !(favoriteMap[index] ?? false); // Toggle the favorite status
    });

    if (favoriteMap[index]!) {
      // If favorite is now true (i.e., red icon), show Snackbar
      errorSnackBar(context, 'Added to favorites');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            final item = foodItems[index];
            final isFavorite = favoriteMap[index] ?? false; // Check if item is favorite

            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.asset(
                    item.image,
                    width: 60.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            item.foodName,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 80.w),
                          GestureDetector(
                            onTap: () {
                              toggleFavorite(index); // Toggle favorite status on tap
                            },
                            child: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.black,
                              size: 30.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Text(
                            '${item.price.toStringAsFixed(2)} DT ',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '| ${item.quantity} item',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButtonTrack(
              onPressed: () {},
              buttonText: 'Order',
            ),
            CustomButton2(
              onPressed: () {
                // Handle button press
              },
              buttonText: 'Cancel',
            ),
          ],
        ),
      ],
    );
  }
}

class FoodItem {
  final String image;
  final String foodName;
  final String restauName;
  final double price;
  final double totalPrice;
  final int quantity;

  FoodItem({
    required this.image,
    required this.foodName,
    required this.restauName,
    required this.price,
    required this.totalPrice,
    required this.quantity,
  });
}

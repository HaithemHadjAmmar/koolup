// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CustomButtons.dart';

class HistoryListWidget extends StatefulWidget {
  const HistoryListWidget({super.key});

  @override
  _HistoryListWidgetState createState() => _HistoryListWidgetState();
}

class _HistoryListWidgetState extends State<HistoryListWidget> {
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
                      SizedBox(width: 20.w),

                      Text('Completed',
                        style: GoogleFonts.poppins(
                            color: Colors.green,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700
                        ),
                      )
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
                                fontWeight: FontWeight.w600),
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
            CustomButton2(
              onPressed: () {
                // Handle button press
              },
              buttonText: 'Rate',
            ),
            CustomButtonTrack(
              onPressed: () {},
              buttonText: 'Re-Order',
            ),
          ],
        ),
      ],
    );
  }
}

class DrinkHistoryListWidget extends StatefulWidget {
  @override
  _DrinkHistoryListWidgetState createState() => _DrinkHistoryListWidgetState();
}

class _DrinkHistoryListWidgetState extends State<DrinkHistoryListWidget> {
  final List<FoodItem> drinkItems = [
    FoodItem(
      image: 'assets/coca.png',
      foodName: 'CocaCola',
      restauName: 'Pizza Hut',
      price: 3,
      totalPrice: 19.98,
      quantity: 02,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: drinkItems.length,
          itemBuilder: (context, index) {
            final item = drinkItems[index];
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
                          SizedBox(width: 20.w),
                          
                          Text('Canceled',
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700
                            ),
                          )
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
                                fontWeight: FontWeight.w600),
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
            CustomButton2(
              onPressed: () {
                // Handle button press
              },
              buttonText: 'Rate',
            ),
            CustomButtonTrack(
              onPressed: () {
                // Handle button press
              },
              buttonText: 'Re-Order',
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
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Orders/OrderComponents/CustomDivider.dart';

import 'OrderComponents/HistoryComponenet.dart';
import 'OrderComponents/OngoingComponent.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Orders',
            style: GoogleFonts.poppins(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
            labelStyle: GoogleFonts.poppins(
              color: Color(0xFFFF7622),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              color: Color(0xFFA5A7B9),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Color(0xFFFF7622),
                width: 2.0.w,
              ),
            ),
            indicatorColor: Color(0xFFFF7622),

          ),
        ),
        body: TabBarView(
          children: [
            OngoingOrdersPage(),
            HistoryOrdersPage(),
          ],
        ),
      ),
    );
  }
}

class OngoingOrdersPage extends StatelessWidget {
  const OngoingOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Food',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const CustomDivider(),
            SizedBox(height: 10.h),
            OngoingListWidget(),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Drink',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const CustomDivider(),
            SizedBox(height: 10.h),
            DrinkListWidget(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}

class HistoryOrdersPage extends StatelessWidget {
  const HistoryOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Food',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const CustomDivider(),
            SizedBox(height: 10.h),
            HistoryListWidget(),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Drink',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const CustomDivider(),
            SizedBox(height: 10.h),
            DrinkHistoryListWidget(),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
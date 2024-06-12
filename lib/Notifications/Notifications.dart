// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notifications',
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
              Tab(text: 'Notifications'),
              Tab(text: 'Messages'),
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
            NotiPage(),
            MessPage(),
          ],
        ),
      ),
    );
  }
}

class NotiPage extends StatelessWidget {
  const NotiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center the column vertically
          children: [
            Icon(
              Icons.calendar_today,
              size: 150.w, // Adjust the size as needed
              color: Colors.grey, // Adjust the color as needed
            ),
            SizedBox(height: 20.h), // Add spacing between the icon and text
            Text(
              'No notifications yet',
              style: TextStyle(
                fontSize: 24.sp, // Adjust the size as needed
                color: Colors.black,
                fontWeight: FontWeight.w700// Adjust the color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessPage extends StatelessWidget {
  const MessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Center the column vertically
          children: [
            Icon(
              Icons.message,
              size: 150.w, // Adjust the size as needed
              color: Colors.grey, // Adjust the color as needed
            ),
            SizedBox(height: 20.h), // Add spacing between the icon and text
            Text(
              'No messages yet',
              style: TextStyle(
                fontSize: 24.sp, // Adjust the size as needed
                color: Colors.black,
                fontWeight: FontWeight.w700// Adjust the color as needed
              ),
            ),
          ],
        ),
      ),
    );
  }
}

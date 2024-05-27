import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Adressscreen extends StatefulWidget {
  const Adressscreen({Key? key}) : super(key: key);

  @override
  State<Adressscreen> createState() => _AdressscreenState();
}

class _AdressscreenState extends State<Adressscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Address',
          style: GoogleFonts.poppins(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 20.h), // Spacer at the top
            Container(
              width: 327.w,
              height: 101.h,
              decoration: BoxDecoration(
                color: Color(0xFFF0F5FA),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/Home.png',
                          width: 60.w,
                          height: 60.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Home',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 55.w),
                                IconButton(
                                  onPressed: () {
                                    // Add functionality for delete action
                                  },
                                  icon: Icon(Icons.edit_note, color: Colors.red,),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // Add functionality for update action
                                  },
                                  icon: Icon(Icons.delete, color: Colors.red,),
                                ),
                              ],
                            ),
                            Text(
                              'Akouda, Sousse',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h), // Space between containers
            Container(
              width: 327.w,
              height: 101.h,
              decoration: BoxDecoration(
                color: Color(0xFFF0F5FA),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/work.png',
                          width: 60.w,
                          height: 60.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Work',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 55.w),
                                IconButton(
                                  onPressed: () {
                                    // Add functionality for delete action
                                  },
                                  icon: Icon(Icons.edit_note, color: Colors.red,),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // Add functionality for update action
                                  },
                                  icon: Icon(Icons.delete, color: Colors.red),
                                ),
                              ],
                            ),
                            Text(
                              'Gaamoun Akouda, Sousse',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


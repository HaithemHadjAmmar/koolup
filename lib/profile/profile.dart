import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/profile/EditProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Info',
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
        actions: [
          TextButton(
            onPressed: () {
              Get.to(
                    () => EditProfil(),
                transition: Transition.fadeIn,
                duration: Duration(milliseconds: 500),
              );
            },
            child: Text(
              'Edit',
              style: GoogleFonts.poppins(
                color: Color(0xFFFF7622),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFFF7622),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, right: 80.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Hero(
                    tag: 'profile',
                    child: Image.asset(
                      'assets/chahd.png',
                      width: 100.w,
                      height: 100.h,
                      //  fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 30.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ChahdB',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'I love fast food',
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
            SizedBox(height: 12.h),
            Container(
              width: 327.w,
              height: 192.h,
              decoration: BoxDecoration(
                color: Color(0xFFF6F8FA),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 30.w,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/profil.png',
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FULL NAME',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Chahd Bannani',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Image.asset(
                          'assets/email.png',
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'EMAIL',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'chahd@gmail.com',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Image.asset(
                          'assets/phone.png',
                          width: 40.w,
                          height: 40.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PHONE NUMBER',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '98 111 222',
                              style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 12.sp,
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


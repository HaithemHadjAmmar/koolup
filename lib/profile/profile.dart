import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390.w,
        height: 230.h,
        transform: Matrix4.translationValues(0.0, -24.0, 0.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF527FEF), Color(0xFF3162DA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x803162DA),
              offset: Offset(0, 17),
              blurRadius: 50.r,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
        ),
        child: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 80.w,
          ),
          SizedBox(height: 6.h),
          Text(
            'haithem.beenammar43@gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}


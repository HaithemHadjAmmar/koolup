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
          gradient: const LinearGradient(
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
          Padding(
            padding: EdgeInsets.only(left: 300.w, top: 30.h),
            child: IconButton(
              icon: Icon(
                Icons.start,
                color: Colors.white,
                size: 30.w,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 80.w,
          ),
          SizedBox(height: 6.h),
          Text(
            'Haithem Hadj Ammar',
            style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 2.h),
          Text(
            'haithem.beenammar43@gmail.com',
            style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

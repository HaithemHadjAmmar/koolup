// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/profile/profile.dart';
import '../Constantes.dart';
import 'package:get/get.dart';
import '../homeScreen/HomeScreen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Color textColor1 = koolColor;
  Color textColor2 = koolColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF341748),
            ),
            child: Center(
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
          ),
          ListTile(
            splashColor: koolColor,
            leading: Icon(
              Icons.dashboard,
              color: textColor1,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.poppins(
                color: textColor1,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              setState(() {
                textColor1 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor1 = koolColor;
                });

              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Icon(
              Icons.person_2_rounded,
              color: textColor2,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(
                color: textColor2,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            onTap: () {
              setState(() {
                textColor2 = Colors.white;
              });
              Get.to(
                    () => Profile(),
                transition: Transition.fadeIn,
                duration: Duration(milliseconds: 300),
              );
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor2 = koolColor;
                });
              });
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}

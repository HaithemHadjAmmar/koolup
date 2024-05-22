import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/profile/profile.dart';
import '../Constantes.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Color textColor1 = koolColor;
  Color textColor2 = koolColor;
  Color textColor3 = koolColor;
  Color textColor4 = koolColor;
  Color textColor5 = koolColor;
  Color textColor6 = koolColor;
  Color textColor7 = koolColor;
  Color textColor8 = koolColor;
  Color textColor9 = koolColor;
  Color textColor10 = koolColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/chahd.png',
                    width: 80.w,
                    height: 80.h,
                    fit: BoxFit.cover,
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
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/profil.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Personal Info',
                  style: GoogleFonts.poppins(
                    color: textColor1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor1,
              size: 20.w,
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
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/adresse.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Adresses',
                  style: GoogleFonts.poppins(
                    color: textColor2,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor2,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor2 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor2 = koolColor;
                });
              });
            },
          ),

          const Divider(),

          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Carrt.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Cart',
                  style: GoogleFonts.poppins(
                    color: textColor3,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor3,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor3 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor3 = koolColor;
                });
              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/favo.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Favorite',
                  style: GoogleFonts.poppins(
                    color: textColor4,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor4,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor4 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor4 = koolColor;
                });
              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/noti.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Notifications',
                  style: GoogleFonts.poppins(
                    color: textColor5,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor5,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor5 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor5 = koolColor;
                });
              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/paym.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Payment Method',
                  style: GoogleFonts.poppins(
                    color: textColor6,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor6,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor6 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor6 = koolColor;
                });
              });
            },
          ),

         const Divider(),

          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/faq.png',
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 12.w),
                Text(
                  'FAQs',
                  style: GoogleFonts.poppins(
                    color: textColor7,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor7,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor7 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor7 = koolColor;
                });
              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/rev.png',
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'User Reviews',
                  style: GoogleFonts.poppins(
                    color: textColor8,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor8,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor8 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor8 = koolColor;
                });
              });
            },
          ),
          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/sett.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Settings',
                  style: GoogleFonts.poppins(
                    color: textColor9,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor9,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor9 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor9 = koolColor;
                });
              });
            },
          ),

          const Divider(),

          ListTile(
            splashColor: koolColor,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/log.png',
                  width: 30.w,
                  height: 30.h,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                    color: textColor10,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textColor10,
              size: 20.w,
            ),
            onTap: () {
              setState(() {
                textColor10 = Colors.white;
              });
              Future.delayed(Duration(milliseconds: 200), () {
                setState(() {
                  textColor10 = koolColor;
                });
              });
            },
          ),
        ],
      ),
    );
  }
}


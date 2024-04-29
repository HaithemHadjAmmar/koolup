// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/CardComponent/HomeCard.dart';
import 'package:koolup/Constantes.dart';
import '../Drawer/CustomDrawer.dart';
import '../customappbar/AppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<bool> _onWillPop() async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Exit App',
          style: GoogleFonts.poppins(),
        ),
        content: Text(
          'Are you sure you want to exit?',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Container(
              decoration: BoxDecoration(
                color: koolColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  'No',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop(); // Close the app
            },
            child: Text(
              'Yes',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: koolColor,
              ),
            ),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: SafeArea(
            child: Scaffold(
          key: _scaffoldKey,
          appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
          drawer: CustomDrawer(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.w),
                  child: Row(
                    children: [
                      Text(
                        'Hey Chahed, ',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1E1D1D),
                        ),
                      ),
                      Text(
                        'Welcome!',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E1D1D),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 20.w),
                  child: Container(
                    margin: EdgeInsets.only(top: 15.h, right: 30.w),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFA0A5BA),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xFF676767),
                          size: 25.w,
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.name,
                            cursorColor: koolColor,
                            decoration: InputDecoration(
                              hintText: 'Search dishes, restaurants',
                              hintStyle: GoogleFonts.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF676767),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Categories',
                        style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF32343E),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: Row(
                          children: [
                            Text(
                              'See All',
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Color(0xFF32343E),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFA0A5BA),
                              size: 20.w,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Open Restaurants',
                        style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF32343E),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        child: Row(
                          children: [
                            Text(
                              'See All',
                              style: GoogleFonts.poppins(
                                fontSize: 16.sp,
                                color: Color(0xFF32343E),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFA0A5BA),
                              size: 20.w,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeCard(
                        image: 'assets/Baguette.png',
                        title: 'Rose Garden Restaurants',
                        subtitle: 'Burger - Chicken - Dishes - Wings',
                        review: '4.5',
                        delivery: 'Free',
                        time: '20 min',
                      ),

                      HomeCard(
                        image: 'assets/papa.png',
                        title: 'Rose Garden Restaurants',
                        subtitle: 'Burger - Chicken - Dishes - Wings',
                        review: '4.7',
                        delivery: 'Free',
                        time: '20 min',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //  bottomNavigationBar: const CustomButtomNavigationBar(),
        )));
  }
}

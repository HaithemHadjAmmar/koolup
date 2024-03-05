// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constantes.dart';
import '../customButtomNavigationBar/CustomButtomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Color textColor1 = koolColor;
  Color textColor2 = koolColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/logo2.png',
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/Menu.png',
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Color(0xFF341748),
              size: 30.w,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
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
                Icons.check_circle,
                color: textColor1,
              ),
              title: Text(
                'Item 1',
                style: GoogleFonts.roboto(
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
                Icons.check_circle,
                color: textColor2,
              ),
              title: Text(
                'Item 2',
                style: GoogleFonts.roboto(
                  color: textColor2,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
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
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 18.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '20',
                            style: GoogleFonts.sen(
                              fontSize: 52.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'RUNNING ORDERS',
                          style: GoogleFonts.sen(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '05',
                            style: GoogleFonts.sen(
                              fontSize: 52.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'ORDER REQUEST',
                          style: GoogleFonts.sen(
                            color: Colors.grey,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomButtomNavigationBar(),
    )
    );
  }
}

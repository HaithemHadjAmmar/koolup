// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Constantes.dart';
import '../Drawer/CustomDrawer.dart';
import '../customButtomNavigationBar/CustomButtomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
              Icons.shopping_bag_outlined,
              color: Color(0xFF341748),
              size: 30.w,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Hey Chahed, ',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1E1D1D),
                  ),
                  ),
                  Text('Welcome!',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E1D1D),
                    ),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 15.h, right: 30.w),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(width: 2, color: Color(0xFFA0A5BA),),
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
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF676767),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomButtomNavigationBar(),
    ));
  }
}

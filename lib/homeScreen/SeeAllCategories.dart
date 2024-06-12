import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cerclehome/CercleHome.dart';

class SeeAllCategories extends StatefulWidget {
  const SeeAllCategories({super.key});

  @override
  State<SeeAllCategories> createState() => _SeeAllCategoriesState();
}

class _SeeAllCategoriesState extends State<SeeAllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Categories',
          style: GoogleFonts.poppins(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10.w, // Adjust the spacing as needed
            runSpacing: 10.h, // Adjust the spacing as needed
            children: const [
              ImageTitleComponent(
                  title: 'All', imagePath: 'assets/res.png'),
              ImageTitleComponent(
                  title: 'Hot Dog', imagePath: 'assets/hotdog.png'),
              ImageTitleComponent(
                  title: 'Burger', imagePath: 'assets/burger.png'),
              ImageTitleComponent(
                  title: 'Pizza', imagePath: 'assets/res.png'),
              ImageTitleComponent(
                  title: 'Makloub', imagePath: 'assets/hotdog.png'),
              ImageTitleComponent(
                  title: 'Chapati', imagePath: 'assets/burger.png'),
              ImageTitleComponent(
                  title: 'Pates', imagePath: 'assets/res.png'),
              ImageTitleComponent(
                  title: 'Tacos', imagePath: 'assets/hotdog.png'),
              ImageTitleComponent(
                  title: 'Panozzo', imagePath: 'assets/burger.png'),
            ],
          ),
        ),
      ),
    );
  }
}
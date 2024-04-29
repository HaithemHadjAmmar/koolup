// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuCardComponent extends StatefulWidget {
  const MenuCardComponent({Key? key}) : super(key: key);

  @override
  State<MenuCardComponent> createState() => _MenuCardComponentState();
}

class _MenuCardComponentState extends State<MenuCardComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0.r),
      ),
      color: Colors.white,
      shadowColor: Colors.grey.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 150.w,
          height: 200.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Add more child widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}

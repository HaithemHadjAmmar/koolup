
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonTrack extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButtonTrack({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 40.h,
      margin: EdgeInsets.fromLTRB(12.w, 0, 12.w, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Color(0xFFFF7622),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const CustomButton2({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 40.h,
      margin: EdgeInsets.fromLTRB(12.w, 0, 12.w, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Color(0xFFFF7622)),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFFFF7622),
          ),
        ),
      ),
    );
  }
}
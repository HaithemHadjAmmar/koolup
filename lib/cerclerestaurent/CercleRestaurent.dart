import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleComponent extends StatefulWidget {
  final String title;

  const TitleComponent({Key? key, required this.title}) : super(key: key);

  @override
  _TitleComponentState createState() => _TitleComponentState();
}

class _TitleComponentState extends State<TitleComponent> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Column(
          children: [
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25.r),
              child: Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: _isSelected ? Color(0xFFF58D1D) : Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Center(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      color: _isSelected ? Colors.white : Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}



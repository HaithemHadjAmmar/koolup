import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTitleComponent extends StatefulWidget {
  final String title;
  final String imagePath;

  const ImageTitleComponent({Key? key, required this.title, required this.imagePath}) : super(key: key);

  @override
  _ImageTitleComponentState createState() => _ImageTitleComponentState();
}

class _ImageTitleComponentState extends State<ImageTitleComponent> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isClicked = !_isClicked;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Column(
          children: [
            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25.r),
              child: Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: _isClicked ? Color(0xFFF58D1D) : Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.imagePath,
                      height: 25.h,
                      width: 25.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 8.0.w),
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

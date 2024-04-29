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
            Container(
              height: 50.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: _isClicked ? Color(0xFFF58D1D) : Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(25.r),
                  right: Radius.circular(25.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.imagePath,
                    height: 20.h,
                    width: 20.w,
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
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}

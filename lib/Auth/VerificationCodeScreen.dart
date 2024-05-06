// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:koolup/Auth/LoginScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../Constantes.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF341748),
            ),
            child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: FractionallySizedBox(
                      heightFactor: 1.2,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 140.h,
                            left: 0,
                            right: 0,
                            child: Column(children: [
                              Text(
                                'Verification',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'We have sent a code to your email',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Example@gmail.coml',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w800),
                              )
                            ]
                            ),
                          ),
                          Positioned(
                            top: 80.h,
                            left: 10.w,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                child: Image.asset(
                                  'assets/backButton.png',
                                  width: 50.w,
                                  height: 50.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 20.h,
                            child: SizedBox(
                              child: Image.asset(
                                'assets/img2.png',
                                width: 350.w,
                                height: 350.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: FractionallySizedBox(
                      heightFactor: 1.2,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 80.h),
                                PinCodeTextField(
                                  appContext: context,
                                  length: 4,
                                  obscureText: false,
                                  animationType: AnimationType.fade,
                                  keyboardType: TextInputType.number,
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(5),
                                    fieldHeight: 50.h,
                                    fieldWidth: 50.w,
                                    inactiveColor: Colors.grey,
                                    inactiveFillColor: Colors.grey,
                                    activeColor: Colors.black,
                                    activeFillColor: Colors.white,
                                    selectedColor: koolColor,
                                    selectedFillColor: Colors.white,
                                  ),
                                  onChanged: (value) {
                                    // You can handle changes here if needed
                                  },
                                ),

                                SizedBox(height: 30.h),

                                CustomButton(
                                  onPressed: () {
                                    Get.to(
                                          () => LoginScreen(),
                                      transition: Transition.fadeIn,
                                      duration: Duration(milliseconds: 300),
                                    );
                                  },
                                  buttonText: 'VERIFY',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}

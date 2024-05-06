// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../Constantes.dart';
import 'VerificationCodeScreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String _email = '';

  /// Login Function
  void handleForgot() {
    setState(() {});

    if (_email.isNotEmpty &&
        _email.contains('@')
       ) {
      Get.to(
            () => VerificationCodeScreen(),
        transition: Transition.fadeIn,
        duration: Duration(milliseconds: 300),
      );
    } else {
      errorSnackBar(context, 'Enter Your E-mail');
    }
  }

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
                            top: 150.h,
                            left: 0,
                            right: 0,
                            child: Column(children: [
                              Text(
                                'Forgot Password',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Please sign in to your existing account',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
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
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.email),
                                    hintText: 'Enter your E-mail',
                                    labelText: 'E-mail',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      borderSide: BorderSide(color: koolColor),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    _email = value;
                                  },
                                  cursorColor: koolColor,
                                ),

                                SizedBox(height: 30.h),
                                CustomButton(
                                  onPressed: () {
                                   handleForgot();
                                  },
                                  buttonText: 'SEND CODE',
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

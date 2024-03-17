// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Auth/RegisterScreen.dart';
import '../CircleButton.dart';
import '../Constantes.dart';
import '../homeScreen/HomeScreen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  String _userName = '';
  String _password = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color emailBorderColor = Color(0xFFfeb502);
  Color passwordBorderColor = Color(0xFFfeb502);

  /// Login Function
  void handleLogin() {
    if (_userName.isEmpty && _password.isEmpty) {
      errorSnackBar(context, 'Enter email and password');
    } else if (_userName.isEmpty) {
      errorSnackBar(context, 'Enter your User Name');
    } else if (_password.isEmpty) {
      errorSnackBar(context, 'Enter your password');
    } else {
      setState(() {});

      Get.to(
        () => HomeScreen(),
        transition: Transition.fadeIn,
        duration: Duration(milliseconds: 300),
      );
    }
  }

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF341748),
            ),
            child: Column(children: [
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
                            'Log In',
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
                        ]),
                      ),
                      Positioned(
                        top: 20.h,
                        child: SizedBox(
                          child: Image.asset(
                            'assets/img.png',
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
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person),
                                hintText: 'Enter your User Name',
                                labelText: 'User Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  borderSide: BorderSide(color: koolColor),
                                ),
                              ),
                              onChanged: (value) {
                                _userName = value;
                              },
                              cursorColor: koolColor,
                            ),
                            SizedBox(height: 18.h),
                            TextField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                                hintText: 'Enter your password',
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  borderSide: BorderSide(color: koolColor),
                                ),
                              ),
                              onChanged: (value) {
                                _password = value;
                              },
                              cursorColor: koolColor,
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          rememberMe = value!;
                                        });
                                      },
                                      activeColor: Color(0xFFFF7622),
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: GoogleFonts.poppins(
                                          color: Color(0xFF000000),
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Add your onPressed logic for "Forgot Password" here
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: GoogleFonts.poppins(
                                        color: Color(0xFFFF7622),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 20.h),
                                backgroundColor: Color(0xFFFF7622),
                                fixedSize: Size(330.8, 60),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                handleLogin();
                              },
                              child: Text(
                                'SIGN IN',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF646982),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(
                                      () => RegisterScreen(),
                                      transition: Transition.fadeIn,
                                      duration: Duration(milliseconds: 300),
                                    );
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFFFF7622),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                'Or',
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF646982),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleButton(
                                  onPressed: () {
                                    // Add your onPressed logic for Facebook sign-in here
                                  },
                                  color: Color(0xFF3B5998),
                                  icon: Icons.facebook_sharp,
                                ),
                                CircleButton(
                                  onPressed: () {
                                    // Add your onPressed logic for Google sign-in here
                                  },
                                  color: Colors.white,
                                  icon: Icons.g_mobiledata,
                                ),
                                CircleButton(
                                  onPressed: () {
                                    // Add your onPressed logic for Apple sign-in here
                                  },
                                  color: Color(0xFF000000),
                                  icon: Icons.apple,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ])));
  }
}

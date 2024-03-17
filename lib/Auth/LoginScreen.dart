// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constantes.dart';
import '../homeScreen/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  String _email = '';
  String _password = '';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color emailBorderColor = Color(0xFFfeb502);
  Color passwordBorderColor = Color(0xFFfeb502);

  /// Login Function
  void handleLogin() {
    if (_email.isEmpty && _password.isEmpty) {
      errorSnackBar(context, 'Enter email and password');
    } else if (_email.isEmpty) {
      errorSnackBar(context, 'Enter your User Name');
    } else if (_password.isEmpty) {
      errorSnackBar(context, 'Enter your password');
    } else {
      setState(() {});

      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: HomeScreen(),
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Column(
                      children: [
                           Text(
                                'Log In',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w700
                                ),
                              ),

                        SizedBox(height: 3.h),

                          Text(
                              'Please sign in to your existing account',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400
                              ),
                            )
                            ]
                          ),
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
                                  keyboardType: TextInputType.emailAddress,
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
                                    _email = value;
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
                                SizedBox(height: 14.h),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(horizontal: 20.h), backgroundColor: Color(0xFFFF7622),
                                    fixedSize: Size(330.8, 40),
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
                                  height: 120.h,
                                ),
                                Center(
                                  child: Text(
                                    '© Dundill . 2024 All Rights Reserved',
                                    style: GoogleFonts.inter(
                                        color: Color(0xFFFF7622),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ])
        )
    );

  }
}
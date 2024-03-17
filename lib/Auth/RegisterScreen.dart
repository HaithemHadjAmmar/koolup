// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Constantes.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;

  String _userName = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  Color emailBorderColor = Color(0xFF341748);
  Color passwordBorderColor = Color(0xFF341748);

  /// Login Function
  void handleLogin() {
    setState(() {});

    if (_email.isNotEmpty &&
        _email.contains('@') &&
        _password.isNotEmpty &&
        _userName.isNotEmpty &&
        _confirmPassword.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: LoginScreen(),
            );
          },
        ),
      );
    } else {
      errorSnackBar(context, 'Enter all required fields');
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
                            'Sign Up',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            'Please sign up to get started',
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
                                hintText: 'Confirm your password',
                                labelText: 'Re-Type Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  borderSide: BorderSide(color: koolColor),
                                ),
                              ),
                              onChanged: (value) {
                                _confirmPassword = value;
                              },
                              cursorColor: koolColor,
                            ),
                            SizedBox(height: 10.h),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 20.h),
                                backgroundColor: Color(0xFFFF7622),
                                fixedSize: Size(330.8, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                handleLogin();
                              },
                              child: Text(
                                'SIGN UP',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
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

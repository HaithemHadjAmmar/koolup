// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Constantes.dart';
import 'LoginScreen.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscureText = true;

  String _Nom = '';
  String _Prenom = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  String _Role = 'Consomateur';

  Color emailBorderColor = Color(0xFF341748);
  Color passwordBorderColor = Color(0xFF341748);

  /// Login Function
  void handleRegister() {
    setState(() {});

    if (_email.isNotEmpty &&
        _email.contains('@') &&
        _password.isNotEmpty &&
        _Nom.isNotEmpty &&
        _Prenom.isNotEmpty &&
        _confirmPassword.isNotEmpty &&
        _password == _confirmPassword) {

      Get.to(
            () => LoginScreen(),
        transition: Transition.fadeIn,
        duration: Duration(milliseconds: 300),
      );
    } else {
      errorSnackBar(context, 'Enter all required fields and make sure passwords match');
    }
  }

  bool rememberMe = false;

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
                            SizedBox(height: 35.h),
                            TextField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person),
                                hintText: 'Enter your Name',
                                labelText: 'Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  borderSide: BorderSide(color: koolColor),
                                ),
                              ),
                              onChanged: (value) {
                                _Nom = value;
                              },
                              cursorColor: koolColor,
                            ),
                            SizedBox(height: 18.h),
                            TextField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person),
                                hintText: 'Enter your Prenom',
                                labelText: 'Prenom',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  borderSide: BorderSide(color: koolColor),
                                ),
                              ),
                              onChanged: (value) {
                                _Prenom = value;
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
                            SizedBox(height: 30.h),
                            CustomButton(
                              onPressed: () {
                               handleRegister();
                              },
                              buttonText: 'SIGN UP',
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koolup/Constantes.dart';
import 'package:flutter/gestures.dart';

import 'LoginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool _obscureText = true;
  String _email = '';
  String _password = '';
  String _fullname = '';
  String _phone = '';

  Color emailBorderColor = Color(0xFFfeb502);
  Color passwordBorderColor = Color(0xFFfeb502);

  /// Login Function
  void handleLogin() {
    setState(() {});

    if (_email.isNotEmpty &&
        _password.isNotEmpty &&
        _fullname.isNotEmpty &&
        _phone.isNotEmpty) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF341748), Colors.blueGrey],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(23.w),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: 'kool',
                      child: Image.asset(
                        'assets/logo2.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.person),
                        hintText: 'First Name & Last Name',
                        labelText: 'Full Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onChanged: (value) {
                        _fullname = value;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone),
                        hintText: 'Your phone number',
                        labelText: 'phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onChanged: (value) {
                        _phone = value;
                      },
                    ),
                    SizedBox(height: 8.h),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email),
                        hintText: 'Enter your email',
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onChanged: (value) {
                        _email = value;
                      },
                    ),
                    SizedBox(height: 8.h),
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
                            _obscureText ? Icons.visibility_off : Icons
                                .visibility,
                          ),
                        ),
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onChanged: (value) {
                        _password = value;
                      },
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: ElevatedButton(
                        onPressed: handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: koolColor,
                        ),
                        child: Text(
                          'Register',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                          text: 'If you have an account ',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'click here',
                              style: GoogleFonts.roboto(
                                color: koolColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(context);
                                },
                            ),
                          ],
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
    );
  }
}
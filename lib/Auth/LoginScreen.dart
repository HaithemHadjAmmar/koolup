import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

import '../Constantes.dart';
import '../homeScreen/HomeScreen.dart';
import 'RegisterScreen.dart';

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
    setState(() {});

    if (_email.isNotEmpty && _password.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: HomeScreen(),
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                              children: [
                                Hero(
                                  tag: 'Moby',
                                  child:
                                  Image.asset(
                                    'assets/logo2.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                                SizedBox(height: 14.h),
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.email),
                                    hintText: 'Entrer votre email',
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
                                          _obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      ),
                                      hintText: 'Enter your password',
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            18.0),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      _password = value;
                                    }
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
                                      'Login',
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
                                      text: 'If you don\'t have an account ',
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'click here ?',
                                          style: GoogleFonts.roboto(
                                            color: koolColor,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegisterScreen(),
                                                ),
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]
                          )
                      )
                    ]
                )
            )
        )
    );
  }
}
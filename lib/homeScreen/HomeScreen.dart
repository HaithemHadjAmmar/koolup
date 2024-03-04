import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constantes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Color textColor1 = koolColor;
  Color textColor2 = koolColor;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              title: Image.asset(
                'assets/logo2.png',
              ),
              leading: IconButton(
                icon: Image.asset(
                   'assets/Menu.png',
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(
                      Icons.account_circle,
                    color: Colors.black,
                    size: 30.w,
                  ),
                  onPressed: () {
                  },
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Color(0xFF341748),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                        ),
                      ),
                    ),
                    ListTile(
                      splashColor: koolColor,
                      leading: Icon(
                          Icons.check_circle,
                          color: textColor1
                      ),
                      title: Text(
                        'Item 1',
                        style: GoogleFonts.roboto(
                          color: textColor1,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          textColor1 = Colors.white;
                        });

                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            textColor1 = koolColor;
                          });
                        });
                      },
                    ),

                    ListTile(
                      splashColor: koolColor,
                      leading: Icon(
                          Icons.check_circle,
                          color: textColor2
                      ),
                      title: Text(
                        'Item 2',
                        style: GoogleFonts.roboto(
                          color: textColor2,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          textColor2 = Colors.white;
                        });

                        Future.delayed(Duration(milliseconds: 200), () {
                          setState(() {
                            textColor2 = koolColor;
                          });
                        });
                      },
                    ),

                    const Divider(),

                  ]
              ),
            ),
            body:  Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                    ],
                  ),
                )
            )
        )
    );
  }
}
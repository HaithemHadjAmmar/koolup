// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constantes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Color textColor1 = koolColor;
  Color textColor2 = koolColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              color: textColor1,
            ),
            title: Text(
              'Item 1',
              style: GoogleFonts.roboto(
                color: textColor1,
                fontSize: 18,
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
              color: textColor2,
            ),
            title: Text(
              'Item 2',
              style: GoogleFonts.roboto(
                color: textColor2,
                fontSize: 18,
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
        ],
      ),
    );
  }
}

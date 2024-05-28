// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Constantes.dart';

class Addnewaddress extends StatefulWidget {
  const Addnewaddress({Key? key}) : super(key: key);

  @override
  State<Addnewaddress> createState() => _AddnewaddressState();
}

class _AddnewaddressState extends State<Addnewaddress> {
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




                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: FractionallySizedBox(
                      heightFactor: 1.1,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,

                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(
                                  'ADDRESS',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Color(0xFFF0F5FA),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'STREET',
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              fillColor: Color(0xFFF0F5FA),
                                              filled: true,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.r),
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                            keyboardType: TextInputType.datetime,
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                                              LengthLimitingTextInputFormatter(7),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 16.w),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'POST CODE',
                                            style: GoogleFonts.poppins(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              fillColor: Color(0xFFF0F5FA),
                                              filled: true,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.r),
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [
                                              FilteringTextInputFormatter.digitsOnly,
                                              LengthLimitingTextInputFormatter(3),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  'LABEL AS',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Color(0xFFF0F5FA),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.r),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                  SizedBox(height: 70.h),

                                CustomButton(
                                  onPressed: () {

                                  },
                                  buttonText: 'SAVE LOCATION',
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

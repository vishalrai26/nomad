import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Auth_Screen/welcome_screen.dart';
import 'package:nomad/Helpers_Widget/string_helpers.dart';
import 'package:nomad/Helpers_Widget/text_widgets.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Image(image: AssetImage("assets/logo.png"), height: 5.h),
              SizedBox(
                height: 5.h,
              ),
              TextWidget(
                text: AppString.travelEasy,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: TextWidget(
                  text: AppString.signUp,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 24.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(height: 2.h),
              Center(
                child: SizedBox(
                  height: 10.h,
                  width: 65.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 3.h,
                        backgroundColor: AppColor.lightBlack,
                        backgroundImage: AssetImage("assets/fb.png"),
                      ),
                      CircleAvatar(
                        radius: 3.h,
                        backgroundColor: AppColor.lightBlack,
                        backgroundImage: AssetImage("assets/insta.png"),
                      ),
                      CircleAvatar(
                        radius: 3.h,
                        backgroundColor: AppColor.lightBlack,
                        backgroundImage: AssetImage("assets/google.png"),
                      ),
                      CircleAvatar(
                        radius: 3.h,
                        backgroundColor: AppColor.lightBlack,
                        backgroundImage: AssetImage("assets/apple.png"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColor.white,
                        indent: 5.w,
                        endIndent: 2.w,
                      ),
                    ),
                    TextWidget(
                      text: AppString.or,
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 24.sp,
                      fonts: GoogleFonts.poppins(),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColor.white,
                        indent: 2.w,
                        endIndent: 5.w,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Center(
                child: TextWidget(
                  text: AppString.signEmail,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(height: 5.h),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(90.w, 6.5.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.w),
                    ),
                    backgroundColor: AppColor.wisteria),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeScreen(),
                    ),
                  );
                },
                child: TextWidget(
                  text: AppString.signUp,
                  color: AppColor.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

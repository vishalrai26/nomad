import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Auth_Screen/username_screen.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                height: 10.h,
              ),
              TextWidget(
                text: AppString.welcome,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 2.h,
              ),
              Image(image: AssetImage("assets/logo.png"), height: 4.5.h),
              SizedBox(
                height: 3.h,
              ),
              TextWidget(
                text: AppString.travelEasy,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 5.h,
              ),

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
                      builder: (context) => UserNameScreen(),
                    ),
                  );
                  },
                child: TextWidget(
                  text: AppString.getStarted,
                  color: AppColor.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
          ListTile(
            leading: CircleAvatar(
              radius: 4.h,
              backgroundColor: AppColor.wisteria,
             child: Image(image: AssetImage("assets/plan.png"), height: 4.h),
            ),
            title: TextWidget(
              text: AppString.planHeading,
              color: AppColor.white,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
              fonts: GoogleFonts.poppins(),
            ),
            subtitle: TextWidget(
              text: AppString.planSubheading,
              color: AppColor.white,
              fontWeight: FontWeight.normal,
              fontSize: 10.sp,
              fonts: GoogleFonts.poppins(),
            ),
          ),
              SizedBox(
                height: 5.h,
              ),
              ListTile(
                trailing: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child: Image(image: AssetImage("assets/usdcoin.png"), height: 6.h),
                ),
                title: TextWidget(
                  text: AppString.dollarHeading,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.dollarSubheading,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child: Image(image: AssetImage("assets/share.png"), height: 4.h),
                ),
                title: TextWidget(
                  text: AppString.shareHeading,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.shareSubheading,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ListTile(
                trailing: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child: Image(image: AssetImage("assets/cloud.png"), height: 5.h),
                ),
                title: TextWidget(
                  text: AppString.gasHeading,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.gasSubheading,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
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

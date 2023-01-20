import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Profile_Screen/dob_screen.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(left: 5.w, right: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              RichText(
                text: TextSpan(
                  text: 'hi  ',
                  style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20.sp,
                    fontFamily: GoogleFonts.poppins().toString(),
                  ),
                  children: [
                    TextSpan(
                      text: AppString.anamika,
                      style: TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20.sp,
                        fontFamily: GoogleFonts.poppins().toString(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h),
              TextWidget(
                text: AppString.createYourProfile,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(85.w, 6.5.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.w),
                      ),
                      backgroundColor: AppColor.wisteria),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DobScreen(),
                      ),
                    );
                    },
                  child: TextWidget(
                    text: AppString.setupProfile,
                    color: AppColor.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    fonts: GoogleFonts.poppins(),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              ListTile(
                leading: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child: Image(image: AssetImage("assets/ai.png"), height: 5.5.h),
                ),
                title: TextWidget(
                  text: AppString.aiHeader,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.aiSubheader,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(height: 5.h),
              ListTile(
                trailing: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child:
                      Image(image: AssetImage("assets/clock.png"), height: 5.5.h),
                ),
                title: TextWidget(
                  text: AppString.clockHeader,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.clockSubheader,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
                  fonts: GoogleFonts.poppins(),
                ),
              ),
              SizedBox(height: 5.h),
              ListTile(
                leading: CircleAvatar(
                  radius: 4.h,
                  backgroundColor: AppColor.wisteria,
                  child: Image(
                      image: AssetImage("assets/usdcoin.png"), height: 5.5.h),
                ),
                title: TextWidget(
                  text: AppString.pointHeader,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                subtitle: TextWidget(
                  text: AppString.pointSubheader,
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
      bottomNavigationBar: Container(
        height: 8.h,
        padding: EdgeInsets.only(right: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 4.h,
              width: 18.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                border: Border.all(
                  color: AppColor.wisteria,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextWidget(
                    text: AppString.skip,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 3.5.w,
                    color: AppColor.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

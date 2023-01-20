import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Profile_Screen/create_profile.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class UserNameScreen extends StatefulWidget {
  const UserNameScreen({Key? key}) : super(key: key);

  @override
  State<UserNameScreen> createState() => _UserNameScreenState();
}

class _UserNameScreenState extends State<UserNameScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.h,
              ),
              TextWidget(
                text: AppString.whatsYourName,
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10.sp,
                    fontFamily: GoogleFonts.poppins().toString()),
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2.h),
                  prefixIcon: Icon(Icons.person, size: 3.h, color: AppColor.white,),
                  suffixIcon: Icon(Icons.star, size: 1.h, color: AppColor.red,),
                  hintText: AppString.firstName,
                  hintStyle: TextStyle(
                      color: AppColor.white.withOpacity(0.37),fontSize: 16.sp),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                  errorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.red,
                      width: 0.2.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10.sp,
                    fontFamily: GoogleFonts.poppins().toString()),
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2.h),
                  prefixIcon: Icon(Icons.person, size: 3.h, color: AppColor.white,),
                  hintText: AppString.lastName,
                  hintStyle: TextStyle(
                      color: AppColor.white.withOpacity(0.37),fontSize: 16.sp),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                  errorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.red,
                      width: 0.2.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextWidget(
                text: AppString.lastNameOptional,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 10.sp,
                fonts: GoogleFonts.poppins(),
              ),
              SizedBox(height: 5.h,),
              TextFormField(
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 10.sp,
                  fontFamily: GoogleFonts.poppins().toString()),
                autovalidateMode:AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2.h),
                  prefixIcon: Icon(Icons.person, size: 3.h, color: AppColor.white,),
                  hintText: AppString.userName,
                  hintStyle: TextStyle(
                      color: AppColor.white.withOpacity(0.37),fontSize: 16.sp),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                  errorBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.red,
                      width: 0.2.w,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.2.h),
                    borderSide: BorderSide(
                      color: AppColor.wisteria,
                      width: 0.2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextWidget(
                text: AppString.changeUsername,
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 10.sp,
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
                      builder: (context) => CreateProfile(),
                    ),
                  );
                  },
                child: TextWidget(
                  text: AppString.Continue,
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
      ),
    );
  }
}

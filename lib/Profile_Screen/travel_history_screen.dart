import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Profile_Screen/profile_bucket_list.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class TravelHistoryScreen extends StatefulWidget {
  const TravelHistoryScreen({super.key});

  @override
  State<TravelHistoryScreen> createState() => _TravelHistoryScreenState();
}

class _TravelHistoryScreenState extends State<TravelHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Center(
                  child: Container(
                    height: 1.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 1.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: AppColor.wisteria,
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                TextWidget(
                  text: AppString.anamika,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                SizedBox(height: 1.h),
                TextWidget(
                  text: AppString.fillTravelMap,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                SizedBox(height: 2.h),
                TextWidget(
                  text: AppString.travelPreviously,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 11.sp,
                  fonts: GoogleFonts.poppins(),
                ),
                SizedBox(height: 2.h),
                TextFormField(
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.poppins().toString()),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(2.h),
                    prefixIcon: Icon(
                      CupertinoIcons.placemark_fill,
                      size: 4.h,
                      color: AppColor.white,
                    ),
                    hintText: AppString.searchCountry,
                    hintStyle: TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 14.sp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.2.h),
                      borderSide: BorderSide(
                        color: AppColor.wisteria,
                        width: 0.2.w,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
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
                SizedBox(height: 3.h),
                SizedBox(
                  height: 26.h,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/worldmap.png"),
                    fit: BoxFit.cover,
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
                        builder: (context) => BucketlistScreen(),
                      ),
                    );
                    },
                  child: TextWidget(
                    text: AppString.Continue,
                    color: AppColor.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
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
      ),
    );
  }
}

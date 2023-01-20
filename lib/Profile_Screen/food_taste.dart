import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Profile_Screen/select_gender.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class FoodTasteScreen extends StatefulWidget {
  const FoodTasteScreen({Key? key}) : super(key: key);

  @override
  State<FoodTasteScreen> createState() => _FoodTasteScreenState();
}

class _FoodTasteScreenState extends State<FoodTasteScreen> {

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
            child: SingleChildScrollView(
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
                            width: 60.w,
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
                    text: AppString.likeEat,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                  SizedBox(height: 5.h),
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
                        Icons.search,
                        size: 3.h,
                        color: AppColor.white,
                      ),
                      hintText: AppString.cuisineMeal,
                      hintStyle:
                          TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 12.sp),
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
                  Center(
                    child: TextWidget(
                      text: AppString.restrictionApply,
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 11.sp,
                      fonts: GoogleFonts.poppins(),
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.vegan,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.keto,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.vegeration,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.paleo,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.pescatarian,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.halal,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.kosher,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      SizedBox(
                        height: 7.h,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                            side: BorderSide(
                              color: AppColor.wisteria,
                            ),
                          ),
                          color: Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding:  EdgeInsets.only(right: 4.h, left: 4.h,),
                              child: TextWidget(
                                text: AppString.other,
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 13.sp,
                                fonts: GoogleFonts.poppins(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
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
                          builder: (context) => GenderSelectionScreen(),
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
        ),
        bottomNavigationBar: Container(
          height: 8.h,
          padding: EdgeInsets.only(right: 5.w, top: 2.h),
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

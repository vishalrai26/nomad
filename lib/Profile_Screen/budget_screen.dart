import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Profile_Screen/food_taste.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
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
                          width: 70.w,
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
                  text: AppString.budgetTypically,
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
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
                    contentPadding: EdgeInsets.only(top: 2.h, left: 3.h, right: 2.h, bottom: 2.h),
                    hintText: '\$',
                    hintStyle: TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 12.sp),
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
                TextFormField(
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.poppins().toString()),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2.h, left: 3.h, right: 2.h, bottom: 2.h),
                    hintText: '\$\$',
                    hintStyle: TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 12.sp),
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
                TextFormField(
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.poppins().toString()),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2.h, left: 3.h, right: 2.h, bottom: 2.h),
                    hintText: '\$\$\$',
                    hintStyle: TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 12.sp),
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
                TextFormField(
                  style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                      fontFamily: GoogleFonts.poppins().toString()),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2.h, left: 3.h, right: 2.h, bottom: 2.h),
                    hintText: '\$\$\$\$',
                    hintStyle: TextStyle(color: AppColor.white.withOpacity(0.37), fontSize: 12.sp),
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
                SizedBox(height: 5.h,),

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
                        builder: (context) => FoodTasteScreen(),
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

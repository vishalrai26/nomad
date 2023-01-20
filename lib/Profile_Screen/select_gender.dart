import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({Key? key}) : super(key: key);

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
                  SizedBox(height: 5.h),
                  TextWidget(
                    text: AppString.anamika,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                  SizedBox(height: 2.h),
                  TextWidget(
                    text: AppString.howIdentify,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                  SizedBox(height: 3.h),
                  TextWidget(
                    text: AppString.selectApply,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 11.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.h),
                        side: BorderSide(
                          color: AppColor.borderSide,
                        ),
                      ),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/male.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.male,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/female.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.female,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/non-binary.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.nonBinary,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.w),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 3.h,
                                      backgroundColor: AppColor.wisteria,
                                      backgroundImage: AssetImage("assets/transgender.png"),
                                    ),
                                    TextWidget(
                                      text: AppString.transgender,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9.sp,
                                      fonts: GoogleFonts.poppins(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 11.w,
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 3.h,
                                      backgroundColor: AppColor.wisteria,
                                      backgroundImage: AssetImage("assets/other-gender.png"),
                                    ),
                                    TextWidget(
                                      text: AppString.otherGender,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9.sp,
                                      fonts: GoogleFonts.poppins(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.h),
                        side: BorderSide(
                          color: AppColor.borderSide,
                        ),
                      ),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/hetero.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.hetero,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/gay.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.gay,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 3.h,
                                    backgroundColor: AppColor.wisteria,
                                    backgroundImage: AssetImage("assets/lesbian.png"),
                                  ),
                                  TextWidget(
                                    text: AppString.lesbian,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 9.sp,
                                    fonts: GoogleFonts.poppins(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 3.3.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 3.h,
                                      backgroundColor: AppColor.wisteria,
                                      backgroundImage: AssetImage("assets/bisexual.png"),
                                    ),
                                    TextWidget(
                                      text: AppString.bisexual,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9.sp,
                                      fonts: GoogleFonts.poppins(),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: 5.w),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 3.h,
                                        backgroundColor: AppColor.wisteria,
                                        backgroundImage: AssetImage("assets/asexual.png"),
                                      ),
                                      TextWidget(
                                        text: AppString.asexual,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 9.sp,
                                        fonts: GoogleFonts.poppins(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: 3.w),
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 3.h,
                                        backgroundColor: AppColor.wisteria,
                                        backgroundImage: AssetImage("assets/other.png"),
                                      ),
                                      TextWidget(
                                        text: AppString.otherSexuality,
                                        color: AppColor.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 8.sp,
                                        fonts: GoogleFonts.poppins(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                        ],
                      ),
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
                    onPressed: () {},
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

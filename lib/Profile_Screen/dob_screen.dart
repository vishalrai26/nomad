import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nomad/Profile_Screen/profile_location.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'package:sizer/sizer.dart';
import '../Helpers_Widget/color_helpers.dart';
import '../Helpers_Widget/string_helpers.dart';
import '../Helpers_Widget/text_widgets.dart';

class DobScreen extends StatefulWidget {
  const DobScreen({Key? key}) : super(key: key);

  @override
  State<DobScreen> createState() => _DobScreenState();
}

class _DobScreenState extends State<DobScreen> {
  DateTime _selectedDate = DateTime.now();
  DateTime current = DateTime.now();

  dynamic age = DateTime(0);


  @override
  Widget build(BuildContext context) {
    var difference = (_selectedDate.difference(age).inDays/365).round();
    print("this ios my diff. : ${difference}");
    return Scaffold(
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
                        width: 10.w,
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
              SizedBox(height: 3.h),
              Row(
                children: [
                  Image(
                    image: const AssetImage("assets/cake.png"),
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextWidget(
                    text: AppString.whatsYourDob,
                    color: AppColor.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.sp,
                    fonts: GoogleFonts.poppins(),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Container(
                height: 25.h,
                color: Colors.black,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border(
                            top: BorderSide(
                              color: AppColor.white.withOpacity(0.37),
                              width: 2,
                            ),
                            bottom: BorderSide(
                              color: AppColor.white.withOpacity(0.37),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ScrollDatePicker(
                      scrollViewOptions: DatePickerScrollViewOptions(
                        year: ScrollViewDetailOptions(
                          textStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          selectedTextStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        day: ScrollViewDetailOptions(
                          textStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          selectedTextStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        month: ScrollViewDetailOptions(
                          textStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          selectedTextStyle: TextStyle(
                            color: AppColor.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      selectedDate: current,
                      locale: Locale('en'),
                      onDateTimeChanged: (DateTime value) {
                        setState(() {
                          age = value;
                          current = value;

                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: AppString.yourAge,
                    style: TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.sp,
                      fontFamily: GoogleFonts.poppins().toString(),
                    ),
                    children: [
                      const TextSpan(
                        text: '  ',
                      ),
                      TextSpan(
                        text: '$difference',
                        style: TextStyle(
                          color: AppColor.white,
                            fontWeight: FontWeight.normal,
                          fontSize: 18.sp,
                          fontFamily: GoogleFonts.poppins().toString(),
                        ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileLocation(),
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
    );
  }

  // void _openDatePicker(BuildContext context) {
  //   BottomPicker.date(
  //     title: '',
  //     displaySubmitButton: false,
  //     dismissable: true,
  //     dateOrder: DatePickerDateOrder.mdy,
  //     backgroundColor: Colors.black,
  //     pickerTextStyle: TextStyle(
  //       color: Colors.white,
  //       fontWeight: FontWeight.bold,
  //       fontSize: 12.sp,
  //     ),
  //     onChange: (index) {
  //       // ignore: avoid_print
  //       print(index);
  //     },
  //     onSubmit: (index) {
  //       // ignore: avoid_print
  //       print(index);
  //     },
  //     bottomPickerTheme: BottomPickerTheme.orange,
  //   );
  // }

}

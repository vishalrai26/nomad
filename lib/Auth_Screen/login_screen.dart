import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomad/Auth_Screen/sign_up_screen.dart';
import 'package:nomad/Auth_Screen/welcome_screen.dart';
import 'package:nomad/Helpers_Widget/color_helpers.dart';
import 'package:nomad/Helpers_Widget/string_helpers.dart';
import 'package:nomad/Helpers_Widget/text_widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  TabController? controller;

  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              TextWidget(
                text: AppString.authHeader,
                color: AppColor.white,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                fonts: GoogleFonts.abrilFatface(),
              ),
              SizedBox(height: 5.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.h),
                  border: Border.all(color: AppColor.white),
                ),
                padding: EdgeInsets.all(1.w),
                child: TabBar(
                  controller: controller,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.h),
                    color: AppColor.wisteria,
                  ),
                  labelColor: AppColor.white,
                  unselectedLabelColor: AppColor.white,
                  tabs: const [
                    Tab(
                      text: AppString.email,
                    ),
                    Tab(
                      text: AppString.phoneNumber,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: AppString.email,
                          color: AppColor.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          fonts: GoogleFonts.poppins(),
                        ),
                        SizedBox(height: 3.h),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(2.h),
                            hintText: AppString.enterEmail,
                            hintStyle: TextStyle(
                              color: AppColor.white.withOpacity(0.37),
                            ),
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
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          child: TextWidget(
                            text: AppString.next,
                            color: AppColor.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            fonts: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: AppString.phoneNumber,
                          color: AppColor.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.sp,
                          fonts: GoogleFonts.poppins(),
                        ),
                        SizedBox(height: 3.h),
                        IntlPhoneField(
                            style: TextStyle(color: Colors.white),
                            controller: phoneController,
                            showCursor: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            keyboardAppearance: Brightness.light,
                            dropdownTextStyle: TextStyle(
                                color: AppColor.white.withOpacity(0.37),
                                fontSize: 14.sp),
                            textAlign: TextAlign.left,
                            flagsButtonPadding: EdgeInsets.only(left: 5.h),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(2.h),
                              hintText: "1234567890",
                              hintStyle: TextStyle(
                                  color: AppColor.white.withOpacity(0.37)),
                              counterText: "",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.2.h),
                                  borderSide: BorderSide(
                                      color: AppColor.wisteria, width: 0.2.w)),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1.2.h),
                                borderSide: BorderSide(
                                    color: AppColor.red, width: 0.2.w),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(1.2.h),
                                borderSide: BorderSide(
                                    color: AppColor.wisteria, width: 0.2.w),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.2.h),
                                  borderSide: BorderSide(
                                      color: AppColor.wisteria, width: 0.2.w)),
                            ),
                            dropdownIconPosition: IconPosition.trailing,
                            showCountryFlag: false,
                            initialCountryCode: 'IN'),
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
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          child: TextWidget(
                            text: AppString.next,
                            color: AppColor.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            fonts: GoogleFonts.poppins(),
                          ),
                        ),
                      ],
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

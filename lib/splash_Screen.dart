import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nomad/Auth_Screen/login_screen.dart';
import 'package:nomad/Auth_Screen/sign_up_screen.dart';
import 'package:sizer/sizer.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(Duration(seconds: 2),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xff353630),
      child: Center(
        child: SizedBox(
          height: 15.h,
          width: 35.w,
          child: Image(image: AssetImage("assets/logo.png"),),
        ),
      ),
    );
  }
}

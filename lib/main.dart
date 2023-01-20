import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomad/Helpers_Widget/color_helpers.dart';
import 'package:nomad/splash_Screen.dart';
import 'package:sizer/sizer.dart';

import 'Auth_Screen/login_screen.dart';
import 'Profile_Screen/dob_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.lightBlack,
        ),
        home: const SplashScreen(),
      );
    });
  }
}

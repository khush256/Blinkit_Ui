import 'package:blinkit/repository/screens/bottomnavbar/bottom_navbar_screen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UiHelper.customImage(
            img: "Blinkit Onboarding Screen.png",
            height: 412.h,
            width: 375.w,
          ),

          SizedBox(height: 5.h),
          UiHelper.customImage(img: "blinkit.png"),

          UiHelper.customText(
            txt: "India’s last minute app",
            clr: Color(0xFF000000),
            fntWeight: FontWeight.bold,
            fntSize: 20.sp,
            fntFamily: "bold",
          ),

          SizedBox(height: 18.h),

          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Container(
              height: 200.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  UiHelper.customText(
                    txt: "Khush",
                    clr: Color(0xFF000000),
                    fntWeight: FontWeight.w500,
                    fntSize: 15.sp,
                    fntFamily: "regular",
                  ),

                  // SizedBox(height: 5.h),
                  UiHelper.customText(
                    txt: "7574013380",
                    clr: Color(0xFF9C9C9C),
                    fntWeight: FontWeight.bold,
                    fntSize: 15.sp,
                    fntFamily: "bold",
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    height: 48.h,
                    width: 295.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xFFE23744),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.customText(
                            txt: "Login with",
                            clr: Color(0xFFFFFFFF),
                            fntWeight: FontWeight.w700,
                            fntSize: 14.sp,
                            fntFamily: "bold",
                          ),
                          SizedBox(width: 5.w),
                          UiHelper.customImage(img: "zomato.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  UiHelper.customText(
                    txt:
                        "Access your saved addresses from Zomato automatically!",
                    clr: Color(0xFF9C9C9C),
                    fntWeight: FontWeight.w400,
                    fntSize: 10.sp,
                  ),
                  SizedBox(height: 27.h),
                  UiHelper.customText(
                    txt: "or login with phone number",
                    clr: Color(0xFF269237),
                    fntWeight: FontWeight.normal,
                    fntSize: 14.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

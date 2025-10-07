import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbf0ce),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            UiHelper.customHeader(),
            SizedBox(height: 54.h),
            UiHelper.customText(
              txt: "Print Store",
              clr: Colors.black,
              fntWeight: FontWeight.w700,
              fntSize: 32,
              fntFamily: "bold",
            ),
            UiHelper.customText(
              txt: "Blinkit ensures secure prints at every stage",
              clr: Color(0xFF9C9C9C),
              fntWeight: FontWeight.w700,
              fntSize: 14.sp,
              fntFamily: "bold",
            ),
            SizedBox(height: 54.h),
            Container(
              height: 181.h,
              width: 361.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 9.sp, right: 23.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.h),
                        UiHelper.customText(
                          txt: "Documents",
                          clr: Colors.black,
                          fntWeight: FontWeight.bold,
                          fntSize: 14.sp,
                          fntFamily: "bold",
                        ),
                        SizedBox(height: 7.h),
                        UiHelper.customText(
                          txt: "✦ Price starting at rs 3/page",
                          clr: Color(0xff9c9c9c),
                          fntWeight: FontWeight.normal,
                          fntSize: 14.sp,
                          fntFamily: "regular",
                        ),
                        UiHelper.customText(
                          txt: "✦ Paper quality: 70 GSM",
                          clr: Color(0xff9c9c9c),
                          fntWeight: FontWeight.normal,
                          fntSize: 14.sp,
                          fntFamily: "regular",
                        ),
                        UiHelper.customText(
                          txt: "✦ Single side prints",
                          clr: Color(0xff9c9c9c),
                          fntWeight: FontWeight.normal,
                          fntSize: 14.sp,
                          fntFamily: "regular",
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          margin: EdgeInsets.only(left: 4.sp, bottom: 12.sp),
                          height: 40.h,
                          width: 125.w,
                          decoration: BoxDecoration(
                            color: Color(0xFF27AF34),

                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF27AF34),
                              foregroundColor: Color(0xFFFFFFFF),
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Upload Files",
                                style: TextStyle(
                                  fontFamily: 'bold',
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    UiHelper.customImage(img: "image 62.png"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

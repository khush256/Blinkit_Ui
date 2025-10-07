import 'package:blinkit/domain/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  static customImage({
    required String img,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return Image.asset(
      "assets/images/$img",
      height: height,
      width: width,
      fit: fit,
    );
  }

  static customText({
    required String txt,
    required Color clr,
    required FontWeight fntWeight,
    String? fntFamily,
    required double fntSize,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) {
    return Text(
      textAlign: textAlign,
      txt,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontFamily: fntFamily ?? "regular",
        fontSize: fntSize,
        color: clr,
        fontWeight: fntWeight,
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String text,
  }) {
    return Container(
      height: 37.h,
      width: 346.w,

      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC5C5C5)),
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search "ice-cream"',
          prefixIcon: Icon(Icons.search, color: Colors.black),
          suffixIcon: Icon(Icons.mic, color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customProduct({
    required String image,
    required String product,
    required String price,
  }) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customImage(img: image, height: 108.h, width: 96.w),
            SizedBox(height: 8.h),
            SizedBox(
              width: 93.w,
              height: 30.h,
              child: customText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                txt: product,
                clr: Colors.black,
                fntWeight: FontWeight.bold,
                fntSize: 10.sp,
                fntFamily: 'regular',
              ),
            ),

            Row(
              children: [
                Icon(Icons.timer, color: Color(0xFF5b3d00)),
                customText(
                  txt: "16 MINS",
                  clr: Color(0xFF9C9C9C),
                  fntWeight: FontWeight.w400,
                  fntSize: 10.sp,
                  fntFamily: 'regular',
                ),
              ],
            ),
            customText(
              txt: "₹ $price",
              clr: Colors.black,
              fntWeight: FontWeight.bold,
              fntSize: 15.sp,
              fntFamily: "bold",
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(top: 95, left: 65),
          child: customButton(),
        ),
      ],
    );
  }

  static customButton() {
    return Container(
      height: 18.h,
      width: 30.w,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF27AF34)),
        borderRadius: BorderRadius.circular(4.r),
        color: Colors.white,
      ),
      child: Center(
        child: customText(
          txt: "ADD",
          clr: Color(0xFF27AF34),
          fntWeight: FontWeight.w400,
          fntSize: 6.sp,
        ),
      ),
    );
  }

  static customHeader({Color? color}) {
    return Container(
      height: 160.h,
      width: double.infinity,
      color: color ?? AppColors.scaffoldBackground,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.customText(
                      txt: "Blinkit in",
                      clr: color != null ? Colors.white : Color(0xFF000000),
                      fntWeight: FontWeight.w700,
                      fntSize: 12.sp,
                      fntFamily: "bold",
                    ),
                    UiHelper.customText(
                      txt: "16 minutes",
                      clr: color != null ? Colors.white : Color(0xFF000000),

                      fntWeight: FontWeight.w700,
                      fntSize: 20.sp,
                      fntFamily: "bold",
                    ),
                    Row(
                      children: [
                        UiHelper.customText(
                          txt: "HOME ",
                          clr: color != null ? Colors.white : Color(0xFF000000),

                          fntWeight: FontWeight.w700,
                          fntSize: 12.sp,
                          fntFamily: "bold",
                        ),
                        UiHelper.customText(
                          txt: "- Khush Patel, Nikol, Ahmedabad",
                          clr: color != null ? Colors.white : Color(0xFF000000),

                          fntWeight: FontWeight.w400,
                          fntSize: 12.sp,
                          fntFamily: "regular",
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: color != null
                      ? Colors.black
                      : Color(0xFFFFFFFF),

                  child: Icon(
                    Icons.person,
                    color: color != null ? Colors.white : Color(0xFF000000),
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.h),
            UiHelper.customTextField(
              controller: TextEditingController(),
              text: "text",
            ),
          ],
        ),
      ),
    );
  }

  static customCategory({required String image, String? category}) {
    return Column(
      children: [
        Container(
          height: 78.h,
          width: 71.w,
          decoration: BoxDecoration(
            color: Color(0xFFD9EBEB),
            borderRadius: BorderRadius.circular(10.r),
          ),

          child: customImage(img: image),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          width: 70.w,
          height: 30.h,
          child: customText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            txt: category ?? "",
            clr: Colors.black,
            fntWeight: FontWeight.bold,
            fntSize: 10.sp,
            fntFamily: 'regular',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  static customSalebox({required String image, required String category}) {
    return Container(
      height: 108.h,
      width: 86.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xffEAD3D3),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 70.w,
            height: 30.h,
            child: customText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              txt: category,
              clr: Colors.black,
              fntWeight: FontWeight.bold,
              fntSize: 10.sp,
              fntFamily: 'regular',
              textAlign: TextAlign.center,
            ),
          ),
          customImage(img: image),
        ],
      ),
    );
  }
}

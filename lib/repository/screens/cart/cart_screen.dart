import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            UiHelper.customHeader(),
            SizedBox(height: 10.h),
            UiHelper.customImage(
              img: 'shopping-cart.png',
              height: 140.h,
              width: 140.w,
            ),
            SizedBox(height: 18.h),
            UiHelper.customText(
              txt: "Reordering will be easy",
              clr: Color(0xFF000000),
              fntWeight: FontWeight.bold,
              fntSize: 16.sp,
              fntFamily: "bold",
            ),
            UiHelper.customText(
              txt: "Items you order will show up here so you can buy",
              clr: Color(0xFF000000),
              fntWeight: FontWeight.bold,
              fntSize: 12.sp,
            ),

            UiHelper.customText(
              txt: "them again easily.",
              clr: Color(0xFF000000),
              fntWeight: FontWeight.bold,
              fntSize: 12.sp,
            ),
            SizedBox(height: 38.h),
            Container(
              padding: EdgeInsets.only(left: 15.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.customText(
                    txt: "Bestsellers",
                    clr: Color(0xFF000000),
                    fntWeight: FontWeight.bold,
                    fntSize: 16.sp,
                    fntFamily: "bold",
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    height: 200.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        UiHelper.customProduct(
                          image: "milk.png",
                          product: "Amul Taaza Toned Fresh Milk",
                          price: "27",
                        ),
                        SizedBox(width: 11.w),

                        UiHelper.customProduct(
                          image: "potato.png",
                          product: "Potato (Aloo)",
                          price: "37",
                        ),
                        SizedBox(width: 11.w),

                        UiHelper.customProduct(
                          image: "tomato.png",
                          product: "Hybrid Tomato",
                          price: "37",
                        ),
                        SizedBox(width: 11.w),

                        UiHelper.customProduct(
                          image: "milk.png",
                          product: "Amul Taaza Toned Fresh Milk",
                          price: "27",
                        ),
                        SizedBox(width: 11.w),

                        UiHelper.customProduct(
                          image: "potato.png",
                          product: "Potato (Aloo)",
                          price: "37",
                        ),
                        SizedBox(width: 11.w),

                        UiHelper.customProduct(
                          image: "tomato.png",
                          product: "Hybrid Tomato",
                          price: "37",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

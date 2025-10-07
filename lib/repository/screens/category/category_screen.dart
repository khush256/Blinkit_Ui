import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final groceryKitchen = [
    {"img": "image 41.png", "text": "Vegetables & Fruits"},
    {"img": "image 42.png", "text": "Atta, Dal & Rice"},
    {"img": "image 43.png", "text": "Oil, Ghee & Masala"},
    {"img": "image 44.png", "text": "Dairy, Bread & Milk"},
    {"img": "image 45.png", "text": "Biscuits & Bakery"},
    {"img": "image 21.png", "text": "Dry Fruits & Cereals"},
    {"img": "image 22.png", "text": "Kitchen & Appliances"},
    {"img": "image 23.png", "text": "Tea & Coffees"},
    {"img": "image 24.png", "text": "Ice Creams & much more"},
    {"img": "image 25.png", "text": "Noodles & Packet Foods"},
  ];

  final snacksDrinks = [
    {"img": "image 31.png", "text": "Chips & Namkeens"},
    {"img": "image 32.png", "text": "Sweets & Chocalates"},
    {"img": "image 33.png", "text": "Drinks & Juices"},
    {"img": "image 34.png", "text": "Sauces & Spreads"},
    {"img": "image 35.png", "text": "Beauty & Cosmetics"},
  ];

  final householdEssentials = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            UiHelper.customHeader(),

            SizedBox(
              height: 559.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 25.h),
                    Container(
                      padding: EdgeInsets.only(left: 15.sp),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper.customText(
                            txt: "Grocery & Kitchen",
                            clr: Color(0xFF000000),
                            fntWeight: FontWeight.bold,
                            fntSize: 16.sp,
                            fntFamily: "bold",
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            height: 115.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return UiHelper.customCategory(
                                  image: groceryKitchen[index]["img"]
                                      .toString(),
                                  category: groceryKitchen[index]["text"]
                                      .toString(),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 11.w);
                              },
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 115.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return UiHelper.customCategory(
                                  image: groceryKitchen[index + 5]["img"]
                                      .toString(),
                                  category: groceryKitchen[index + 5]["text"]
                                      .toString(),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 11.w);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.h),
                    Container(
                      padding: EdgeInsets.only(left: 15.sp),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper.customText(
                            txt: "Snacks & Drinks",
                            clr: Color(0xFF000000),
                            fntWeight: FontWeight.bold,
                            fntSize: 16.sp,
                            fntFamily: "bold",
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            height: 115.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return UiHelper.customCategory(
                                  image: snacksDrinks[index]['img'].toString(),
                                  category: snacksDrinks[index]['text']
                                      .toString(),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 11.w);
                              },
                              itemCount: snacksDrinks.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.h),
                    Container(
                      padding: EdgeInsets.only(left: 15.sp),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiHelper.customText(
                            txt: "Household Essentials",
                            clr: Color(0xFF000000),
                            fntWeight: FontWeight.bold,
                            fntSize: 16.sp,
                            fntFamily: "bold",
                          ),
                          SizedBox(height: 12.h),
                          SizedBox(
                            height: 115.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return UiHelper.customCategory(
                                  image: householdEssentials[index]['img']
                                      .toString(),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 11.w);
                              },
                              itemCount: householdEssentials.length,
                            ),
                          ),
                        ],
                      ),
                    ),
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

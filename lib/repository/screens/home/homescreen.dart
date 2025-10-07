import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final saleCategories = [
    {"img": "image 50.png", "text": "Lights, Diyas & Candles"},
    {"img": "image 51.png", "text": "Diwali Gifts"},
    {"img": "image 52.png", "text": "Appliances & Gadgets"},
    {"img": "image 53.png", "text": "Home & Living"},
  ];

  final products = [
    {
      "img": "image 54.png",
      "text": "Golden Glass Wooden Lid Candle (Oudh)",
      "price": "79",
    },
    {
      "img": "image 57.png",
      "text": "Royal Gulab Jamun By Bikano",
      "price": "79",
    },
    {"img": "image 63.png", "text": "Bikaji Bhujia", "price": "79"},
  ];

  final groceryKitchen = [
    {"img": "image 41.png", "text": "Vegetables & Fruits"},
    {"img": "image 42.png", "text": "Atta, Dal & Rice"},
    {"img": "image 43.png", "text": "Oil, Ghee & Masala"},
    {"img": "image 44.png", "text": "Dairy, Bread & Milk"},
    {"img": "image 45.png", "text": "Biscuits & Bakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            UiHelper.customHeader(color: Color(0xFFEC0505)),
            SizedBox(
              height: 559.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 220.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEC0505),
                        border: Border(
                          top: BorderSide(color: Colors.white, width: 1.h),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 17.h),
                          Row(
                            children: [
                              UiHelper.customImage(img: "image 60.png"),
                              UiHelper.customImage(img: "image 55.png"),
                              UiHelper.customText(
                                txt: "Mega Diwali Sale",
                                clr: Colors.white,
                                fntWeight: FontWeight.bold,
                                fntSize: 20.sp,
                                fntFamily: "ptserif",
                              ),
                              UiHelper.customImage(img: "image 55.png"),
                              UiHelper.customImage(img: "image 60.png"),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 120.h,
                            child: Padding(
                              padding: EdgeInsets.only(left: 15.sp),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return UiHelper.customSalebox(
                                    image: saleCategories[index]["img"]
                                        .toString(),
                                    category: saleCategories[index]["text"]
                                        .toString(),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 8.w);
                                },
                                itemCount: saleCategories.length,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.h),
                    SizedBox(
                      height: 195.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.sp),
                        child: ListView.separated(
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return UiHelper.customProduct(
                              image: products[index]["img"].toString(),
                              product: products[index]["text"].toString(),
                              price: products[index]["price"].toString(),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    SizedBox(height: 27.h),
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

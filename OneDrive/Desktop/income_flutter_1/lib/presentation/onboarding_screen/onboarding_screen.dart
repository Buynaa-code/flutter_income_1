import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 613.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup2,
                            height: 600.v,
                            width: 414.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                height: 486.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: 461.v,
                                              width: 277.h,
                                              margin:
                                                  EdgeInsets.only(left: 61.h),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgBase,
                                                        height: 461.v,
                                                        width: 277.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height: 461.v,
                                                            width: 277.h,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgShoes,
                                                                      height:
                                                                          461.v,
                                                                      width:
                                                                          277.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          height: 461.v,
                                                                          width: 277.h,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgPants2,
                                                                                height: 461.v,
                                                                                width: 277.h,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 461.v,
                                                                                    width: 277.h,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgPants, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 461.v,
                                                                                              width: 277.h,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgCloth2, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 461.v,
                                                                                                        width: 277.h,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgCloth, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                          Align(
                                                                                                              alignment: Alignment.center,
                                                                                                              child: SizedBox(
                                                                                                                  height: 461.v,
                                                                                                                  width: 277.h,
                                                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                                                    CustomImageView(imagePath: ImageConstant.imgGlasses, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                                    Align(
                                                                                                                        alignment: Alignment.center,
                                                                                                                        child: SizedBox(
                                                                                                                            height: 461.v,
                                                                                                                            width: 277.h,
                                                                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                                                                              CustomImageView(imagePath: ImageConstant.imgLips, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                                              Align(
                                                                                                                                  alignment: Alignment.center,
                                                                                                                                  child: SizedBox(
                                                                                                                                      height: 461.v,
                                                                                                                                      width: 277.h,
                                                                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                                                                        CustomImageView(imagePath: ImageConstant.imgEyes, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                                                        Align(
                                                                                                                                            alignment: Alignment.center,
                                                                                                                                            child: SizedBox(
                                                                                                                                                height: 461.v,
                                                                                                                                                width: 277.h,
                                                                                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                                                                                  CustomImageView(imagePath: ImageConstant.imgHair, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                                                                  Align(
                                                                                                                                                      alignment: Alignment.center,
                                                                                                                                                      child: SizedBox(
                                                                                                                                                          height: 461.v,
                                                                                                                                                          width: 277.h,
                                                                                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                                                                                            CustomImageView(imagePath: ImageConstant.imgSkin, height: 461.v, width: 277.h, alignment: Alignment.center),
                                                                                                                                                            Opacity(opacity: 0.6, child: CustomImageView(imagePath: ImageConstant.imgSpecular, height: 461.v, width: 277.h, alignment: Alignment.center))
                                                                                                                                                          ])))
                                                                                                                                                ])))
                                                                                                                                      ])))
                                                                                                                            ])))
                                                                                                                  ])))
                                                                                                        ])))
                                                                                              ])))
                                                                                    ])))
                                                                          ])))
                                                                ])))
                                                  ]))),
                                      _buildManShadow(context),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              height: 95.adaptSize,
                                              width: 95.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 48.h, top: 4.v),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgObject,
                                                        height: 95.adaptSize,
                                                        width: 95.adaptSize,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height:
                                                                84.adaptSize,
                                                            width: 84.adaptSize,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgObject84x84,
                                                                      height: 84
                                                                          .adaptSize,
                                                                      width: 84
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          height: 74.adaptSize,
                                                                          width: 74.adaptSize,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgObject74x74,
                                                                                height: 74.adaptSize,
                                                                                width: 74.adaptSize,
                                                                                alignment: Alignment.center),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                    height: 74.adaptSize,
                                                                                    width: 74.adaptSize,
                                                                                    child: Stack(alignment: Alignment.center, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgObject1, height: 74.adaptSize, width: 74.adaptSize, alignment: Alignment.center),
                                                                                      Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                              height: 74.adaptSize,
                                                                                              width: 74.adaptSize,
                                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                                CustomImageView(imagePath: ImageConstant.imgObject2, height: 74.adaptSize, width: 74.adaptSize, alignment: Alignment.center),
                                                                                                Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                        height: 74.adaptSize,
                                                                                                        width: 74.adaptSize,
                                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                                          CustomImageView(imagePath: ImageConstant.imgObject3, height: 74.adaptSize, width: 74.adaptSize, alignment: Alignment.center),
                                                                                                          CustomImageView(imagePath: ImageConstant.imgObject4, height: 74.adaptSize, width: 74.adaptSize, alignment: Alignment.center)
                                                                                                        ])))
                                                                                              ])))
                                                                                    ])))
                                                                          ])))
                                                                ])))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                              height: 88.adaptSize,
                                              width: 88.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 59.v, right: 57.h),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgObject88x88,
                                                        height: 88.adaptSize,
                                                        width: 88.adaptSize,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                            height:
                                                                88.adaptSize,
                                                            width: 88.adaptSize,
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgObject5,
                                                                      height: 88
                                                                          .adaptSize,
                                                                      width: 88
                                                                          .adaptSize,
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: SizedBox(
                                                                          height: 88.adaptSize,
                                                                          width: 88.adaptSize,
                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgObject6,
                                                                                height: 88.adaptSize,
                                                                                width: 88.adaptSize,
                                                                                alignment: Alignment.center),
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgObject7,
                                                                                height: 88.adaptSize,
                                                                                width: 88.adaptSize,
                                                                                alignment: Alignment.center)
                                                                          ])))
                                                                ])))
                                                  ])))
                                    ])))
                      ])),
                  SizedBox(height: 8.v),
                  Container(
                      width: 294.h,
                      margin: EdgeInsets.only(left: 54.h, right: 65.h),
                      child: Text("Ухаалаг зарцуулж \nилүү хэмнэе",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLargeBluegray500)),
                  SizedBox(height: 45.v),
                  _buildOnboarding(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildManShadow(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: 32.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              Opacity(
                  opacity: 0.2,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgShadows,
                      height: 32.v,
                      width: 414.h,
                      alignment: Alignment.center)),
              Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgShadows,
                      height: 32.v,
                      width: 414.h,
                      alignment: Alignment.center))
            ])));
  }

  /// Section Widget
  Widget _buildOnboarding(BuildContext context) {
    return SizedBox(
        height: 103.v,
        width: 358.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Хэрэглэгчийн эрх бий юу?             ",
                        style: CustomTextStyles.bodyMediumPoppinsGray800),
                    TextSpan(
                        text: "Нэвтрэх",
                        style: CustomTextStyles.bodyMediumPoppinsTeal400)
                  ]),
                  textAlign: TextAlign.left)),
          Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapFrameTwentySeven(context);
                  },
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomElevatedButton(
                        height: 64.v,
                        text: "эхлэх",
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientPrimaryToBlueGrayDecoration,
                        buttonTextStyle: CustomTextStyles.headlineSmallInter),
                    Container(
                        height: 36.v,
                        width: 352.h,
                        decoration:
                            BoxDecoration(color: appTheme.blueGray60002))
                  ])))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapFrameTwentySeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController sixtyEightController = TextEditingController();

  TextEditingController group69Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 420.h,
                child: Column(children: [
                  _buildLoginStack(context),
                  SizedBox(height: 67.v),
                  Padding(
                      padding: EdgeInsets.only(left: 47.h, right: 44.h),
                      child: CustomTextFormField(
                          controller: sixtyEightController,
                          hintText: "Бүтэн нэрээ оруулна уу? ",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 11.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1))),
                  SizedBox(height: 35.v),
                  Padding(
                      padding: EdgeInsets.only(left: 47.h, right: 44.h),
                      child: CustomTextFormField(
                          controller: group69Controller,
                          hintText: "Имэйлээ оруулна уу?",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 11.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimaryContainer,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1))),
                  SizedBox(height: 35.v),
                  Container(
                      width: 328.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 11.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Text("Нууц үгээ оруулаарай",
                          style: CustomTextStyles.bodyMediumPoppinsGray600)),
                  SizedBox(height: 35.v),
                  Container(
                      width: 328.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 11.v),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Text("Нууц үгээ давтан оруулаарай",
                          style: CustomTextStyles.bodyMediumPoppinsGray600)),
                  SizedBox(height: 61.v),
                  CustomElevatedButton(
                      height: 74.v,
                      text: "Бүртгүүлэх",
                      margin: EdgeInsets.only(left: 44.h, right: 34.h),
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      onPressed: () {
                        onTaptf(context);
                      }),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 44.h, right: 52.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text("Хэрэглэгчийн эрхтэй юу? ",
                                    style: CustomTextStyles
                                        .bodySmallPoppinsBlack900)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtWidget(context);
                                },
                                child: Text("Нэвтрэх",
                                    style: CustomTextStyles
                                        .titleSmallPoppinsTeal400))
                          ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
        height: 237.v,
        width: 417.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.h, vertical: 67.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup30),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 80.v),
                        Text("Орлого, зарлагаа хянахад тань туслана",
                            style: CustomTextStyles
                                .bodyMediumPoppinsOnPrimaryContainer)
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEclipse,
              height: 121.v,
              width: 156.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 96.v, right: 94.h),
                  child: Text("Тавтай морилно уу? ",
                      style: CustomTextStyles
                          .titleMediumPoppinsOnPrimaryContainer)))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}

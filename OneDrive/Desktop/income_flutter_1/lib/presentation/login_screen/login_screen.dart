import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 420.h,
                    child: Column(children: [
                      _buildLoginStack(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 46.h, right: 45.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "Enter your email address",
                              textInputType: TextInputType.emailAddress,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 16.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              filled: true,
                              fillColor: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1))),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 46.h, right: 45.h),
                          child: CustomTextFormField(
                              controller: passwordController,
                              hintText: "Enter your password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 16.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              filled: true,
                              fillColor: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1))),
                      SizedBox(height: 90.v),
                      CustomElevatedButton(
                          height: 69.v,
                          text: "Нэвтрэх",
                          margin: EdgeInsets.only(left: 36.h, right: 42.h),
                          buttonStyle: CustomButtonStyles.fillBlueGrayTL34,
                          buttonTextStyle: theme.textTheme.headlineSmall!),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 74.h, right: 55.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWidget(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("Бүртгүүлэх",
                                            style: theme.textTheme.bodyLarge))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWidget1(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 10.v),
                                        child: Text("Бүртгүүлэх",
                                            style: CustomTextStyles
                                                .labelLargePoppinsTeal400)))
                              ])),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginStack(BuildContext context) {
    return SizedBox(
        height: 391.v,
        width: 420.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup30,
              height: 242.v,
              width: 412.h,
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgEclipse,
              height: 121.v,
              width: 156.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 104.v, right: 99.h),
                  child: Text("Тавтай морилно уу !",
                      style: CustomTextStyles
                          .titleMediumPoppinsOnPrimaryContainer))),
          CustomImageView(
              imagePath: ImageConstant.imgUndrawDoneCheckingRe6vyx,
              height: 178.v,
              width: 266.h,
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}

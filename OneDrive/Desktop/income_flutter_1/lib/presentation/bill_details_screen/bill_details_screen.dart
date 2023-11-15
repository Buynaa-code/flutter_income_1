import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_tab_container_page/wallet_tab_container_page.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_radio_button.dart';

class BillDetailsScreen extends StatelessWidget {
  BillDetailsScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwo(context),
              SizedBox(
                height: 529.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.h,
                          vertical: 47.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 97.h),
                                child: Text(
                                  "Youtube Premium",
                                  style: CustomTextStyles.titleMediumSemiBold,
                                ),
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 97.h),
                                child: Text(
                                  "Feb 28, 2022",
                                  style: CustomTextStyles.bodyMedium14,
                                ),
                              ),
                            ),
                            SizedBox(height: 56.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildSeventyEight(
                                context,
                                widgetText: "Үнэ",
                                priceText: " 11.99",
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildSeventyEight(
                                context,
                                widgetText: "Хураамж",
                                priceText: " 1.99",
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Divider(
                              color: appTheme.gray30001,
                            ),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildSeventyEight(
                                context,
                                widgetText: "Нийт",
                                priceText: " 13.98",
                              ),
                            ),
                            SizedBox(height: 43.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Төлбөрийн хэрэгслээ сонго",
                                  style: CustomTextStyles.titleMedium18,
                                ),
                              ),
                            ),
                            SizedBox(height: 17.v),
                            _buildTwentySix(context),
                            SizedBox(height: 15.v),
                            _buildTwentyFive(context),
                            SizedBox(height: 30.v),
                            CustomElevatedButton(
                              height: 60.v,
                              text: "Төлөх",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToBlueGrayDecoration,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimaryContainer,
                            ),
                            SizedBox(height: 52.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup6,
                      height: 163.v,
                      width: 212.h,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        margin: EdgeInsets.only(left: 30.h),
                        padding: EdgeInsets.all(20.h),
                        decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder40,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame92,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 47.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup30,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgIconChevronLeft,
          margin: EdgeInsets.only(left: 24.h),
        ),
        centerTitle: true,
        title: AppbarTitle(
          text: "Bill Details",
        ),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgLocation,
            margin: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 11.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: CustomRadioButton(
        width: 304.h,
        text: "Дебит карт",
        value: "Дебит карт",
        groupValue: radioGroup,
        padding: EdgeInsets.fromLTRB(15.h, 18.v, 30.h, 18.v),
        isRightCheck: true,
        onChange: (value) {
          radioGroup = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.symmetric(vertical: 28.v),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoPaypal1,
            height: 34.adaptSize,
            width: 34.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 5.v,
            ),
            child: CustomRadioButton(
              width: 229.h,
              text: "Paypal",
              value: "Paypal",
              groupValue: radioGroup1,
              textStyle: CustomTextStyles.titleMediumBluegray40001,
              isRightCheck: true,
              onChange: (value) {
                radioGroup1 = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildSeventyEight(
    BuildContext context, {
    required String widgetText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            widgetText,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home1:
        return AppRoutes.walletTabContainerPage;
      case BottomBarEnum.Barchart1:
        return "/";
      case BottomBarEnum.Walletfill:
        return "/";
      case BottomBarEnum.User11:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.walletTabContainerPage:
        return WalletTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}

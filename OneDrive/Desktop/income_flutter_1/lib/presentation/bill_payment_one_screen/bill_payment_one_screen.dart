import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_tab_container_page/wallet_tab_container_page.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';

class BillPaymentOneScreen extends StatelessWidget {
  BillPaymentOneScreen({Key? key})
      : super(
          key: key,
        );

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
              _buildFiftyFour(context),
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
                          vertical: 40.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 80.adaptSize,
                              width: 80.adaptSize,
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
                            SizedBox(height: 15.v),
                            Container(
                              width: 292.h,
                              margin: EdgeInsets.only(
                                left: 33.h,
                                right: 32.h,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "You will pay ",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    TextSpan(
                                      text: "Youtube Premium",
                                      style: CustomTextStyles
                                          .titleLargeBluegray500SemiBold,
                                    ),
                                    TextSpan(
                                      text: " for one month",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "with BCA OneKlik",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 51.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildWidget(
                                context,
                                widget: "Үнэ",
                                price: " 11.99",
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildWidget(
                                context,
                                widget: "Хураамж",
                                price: " 1.99",
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Divider(),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: _buildWidget(
                                context,
                                widget: "Нийт",
                                price: " 13.98",
                              ),
                            ),
                            Spacer(),
                            SizedBox(height: 60.v),
                            CustomElevatedButton(
                              height: 60.v,
                              text: "Баталгаажуулах",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToBlueGrayDecoration,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimaryContainer,
                            ),
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
  Widget _buildFiftyFour(BuildContext context) {
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
          text: "Bill Payment",
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            widget,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          price,
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

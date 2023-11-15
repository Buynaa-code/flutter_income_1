import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_tab_container_page/wallet_tab_container_page.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_bottom_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_icon_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BillPaymentScreen extends StatelessWidget {
  BillPaymentScreen({Key? key})
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
              _buildTwentyTwo(context),
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
                          vertical: 54.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Youtube Premium",
                              style: CustomTextStyles.titleMediumGray700,
                            ),
                            CustomIconButton(
                              height: 56.adaptSize,
                              width: 56.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillGrayTL28,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckCircleFill,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            _buildFrameThirty(context),
                            SizedBox(height: 17.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Төлбөрийн хэрэгсэл",
                                userRole: "дебит карт",
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Төлөв",
                                userRole: "Хийгдсэн",
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Цаг",
                                userRole: "08:15 AM",
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Огноо",
                                userRole: "Feb 28, 2022",
                              ),
                            ),
                            SizedBox(height: 9.v),
                            _buildThirtySix(context),
                            SizedBox(height: 19.v),
                            Divider(),
                            SizedBox(height: 6.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Үнэ",
                                userRole: " 11.99",
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Хураамж",
                                userRole: "-  1.99",
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Divider(),
                            SizedBox(height: 18.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildThirtyOne(
                                context,
                                userName: "Нийт",
                                userRole: " 13.98",
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 115.h),
                                child: QrImageView(
                                  data: 'https://www.google.com',
                                  size: 102.adaptSize,
                                ),
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 38.h,
                                right: 34.h,
                              ),
                              child: OutlineGradientButton(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 1.v,
                                  right: 1.h,
                                  bottom: 1.v,
                                ),
                                strokeWidth: 1.h,
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    appTheme.blueGray50001,
                                    appTheme.blueGray60003,
                                  ],
                                ),
                                corners: Corners(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                ),
                                child: CustomOutlinedButton(
                                  height: 49.v,
                                  text: "Share receipt",
                                  buttonStyle: CustomButtonStyles.outlineTL24,
                                ),
                              ),
                            ),
                            SizedBox(height: 40.v),
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
                      alignment: Alignment.topCenter,
                      child: Text(
                        "амжилттай төлөгдлөө",
                        style: CustomTextStyles.titleLargeBluegray500,
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
  Widget _buildTwentyTwo(BuildContext context) {
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
  Widget _buildFrameThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Гүйлгээний дэлгэрэнгүй",
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Гүйлгээний дугаар",
            style: CustomTextStyles.titleMediumGray700,
          ),
          Spacer(),
          Text(
            "2092913832472..",
            style: theme.textTheme.titleMedium,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCopySimpleFill,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
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
  Widget _buildThirtyOne(
    BuildContext context, {
    required String userName,
    required String userRole,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            userName,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          userRole,
          style: CustomTextStyles.titleMediumBluegray500SemiBold_1.copyWith(
            color: appTheme.blueGray500,
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

import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_one_page/wallet_one_page.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_page/wallet_page.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class WalletTabContainerPage extends StatefulWidget {
  const WalletTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  WalletTabContainerPageState createState() => WalletTabContainerPageState();
}

class WalletTabContainerPageState extends State<WalletTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              _buildThirtyThree(context),
              SizedBox(
                height: 529.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Нийт үлдэгдэл",
                              style: CustomTextStyles.bodyLargeInterGray700,
                            ),
                            SizedBox(height: 11.v),
                            Text(
                              " 2,548.00",
                              style: theme.textTheme.headlineLarge,
                            ),
                            SizedBox(height: 38.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildFrameTwentyTwo(
                                  context,
                                  userName: "Нэмэх",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.h),
                                  child: _buildFrameTwentyTwo(
                                    context,
                                    userName: "Төлөх",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.h),
                                  child: _buildFrameTwentyTwo(
                                    context,
                                    userName: "Илгээх",
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 60.v),
                            _buildTabview(context),
                            _buildTabBarView(context),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyThree(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 44.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup30,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomAppBar(
        height: 40.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgIconChevronLeft,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 3.v,
            bottom: 9.v,
          ),
        ),
        centerTitle: true,
        title: AppbarTitle(
          text: "Түрийвч",
        ),
        actions: [
          AppbarTrailingIconbutton(
            imagePath: ImageConstant.imgBell1,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 48.v,
      width: 374.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          24.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Гүйлгээнүүд",
            ),
          ),
          Tab(
            child: Text(
              "Хүлээгдэж буй гүйлгээ",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 300.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          WalletOnePage(),
          WalletPage(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwentyTwo(
    BuildContext context, {
    required String userName,
  }) {
    return Column(
      children: [
        OutlineGradientButton(
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
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outline,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame21,
            ),
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          userName,
          style: CustomTextStyles.bodyMediumOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ],
    );
  }
}

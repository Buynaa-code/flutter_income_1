import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/presentation/connect_wallet_one_page/connect_wallet_one_page.dart';
import 'package:gankhuyag_s_application1/presentation/connect_wallet_page/connect_wallet_page.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_tab_container_page/wallet_tab_container_page.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:gankhuyag_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:gankhuyag_s_application1/widgets/custom_bottom_bar.dart';

class ConnectWalletTabContainerScreen extends StatefulWidget {
  const ConnectWalletTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConnectWalletTabContainerScreenState createState() =>
      ConnectWalletTabContainerScreenState();
}

class ConnectWalletTabContainerScreenState
    extends State<ConnectWalletTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildEighteen(context),
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
                            _buildTabview(context),
                            SizedBox(
                              height: 573.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  ConnectWalletPage(),
                                  ConnectWalletOnePage(),
                                ],
                              ),
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
  Widget _buildEighteen(BuildContext context) {
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
          text: "Түрийвч цэнэглэх",
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
      width: 334.h,
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
              "Картууд",
            ),
          ),
          Tab(
            child: Text(
              "Аккаунт",
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

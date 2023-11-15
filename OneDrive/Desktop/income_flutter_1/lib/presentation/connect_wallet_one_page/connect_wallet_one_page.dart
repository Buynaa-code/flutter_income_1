import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_icon_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class ConnectWalletOnePage extends StatefulWidget {
  const ConnectWalletOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  ConnectWalletOnePageState createState() => ConnectWalletOnePageState();
}

class ConnectWalletOnePageState extends State<ConnectWalletOnePage>
    with AutomaticKeepAliveClientMixin<ConnectWalletOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: Column(
                  children: [
                    _buildBankFillOne(context),
                    SizedBox(height: 15.v),
                    _buildMicrodeposits2(context),
                    SizedBox(height: 15.v),
                    _buildLogoPaypalOne(context),
                    SizedBox(height: 103.v),
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
                      child: CustomOutlinedButton(
                        text: "ДАРААХ",
                      ),
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
  Widget _buildBankFillOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 60.adaptSize,
            width: 60.adaptSize,
            padding: EdgeInsets.all(13.h),
            decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL30,
            child: CustomImageView(
              imagePath: ImageConstant.imgBankFill1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
            ),
            child: _buildMicrodeposits(
              context,
              microdeposits: "Bank Link",
              duration: "Connect your bank account to deposit & fund",
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 15.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMicrodeposits2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCurrencyCircleDollarFill,
            height: 38.adaptSize,
            width: 38.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 1.v,
            ),
            child: _buildMicrodeposits(
              context,
              microdeposits: "Microdeposits",
              duration: "Connect bank in 5-7 days",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoPaypalOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoPaypal1,
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Paypal",
                  style: CustomTextStyles.titleMediumBluegray40001SemiBold,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Connect you paypal account",
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMicrodeposits(
    BuildContext context, {
    required String microdeposits,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          microdeposits,
          style: CustomTextStyles.titleMediumBluegray40001SemiBold.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          duration,
          style: CustomTextStyles.labelLargeBluegray40001.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
      ],
    );
  }
}

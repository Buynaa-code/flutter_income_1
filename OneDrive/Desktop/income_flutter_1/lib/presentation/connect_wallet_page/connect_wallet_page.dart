import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_floating_text_field.dart';
import 'package:gankhuyag_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ConnectWalletPage extends StatefulWidget {
  const ConnectWalletPage({Key? key})
      : super(
          key: key,
        );

  @override
  ConnectWalletPageState createState() => ConnectWalletPageState();
}

class ConnectWalletPageState extends State<ConnectWalletPage>
    with AutomaticKeepAliveClientMixin<ConnectWalletPage> {
  TextEditingController floatingTextFieldController = TextEditingController();

  TextEditingController group15Controller = TextEditingController();

  TextEditingController cVCController = TextEditingController();

  TextEditingController fourteenController = TextEditingController();

  TextEditingController zIPController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.h),
                child: Column(
                  children: [
                    SizedBox(
                      height: 225.v,
                      width: 324.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.h),
                              decoration:
                                  AppDecoration.gradientOnErrorToCyan.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: _buildHorizontalScroll(context),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              decoration:
                                  AppDecoration.fillPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder23,
                              ),
                              child: _buildHorizontalScroll1(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Картны мэдээлэлээ нэмэх",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 262.h,
                        margin: EdgeInsets.only(right: 102.h),
                        child: Text(
                          "Энд холбох  карт нь зөвхөн  таны нэр дээр байх ёстой.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    _buildFloatingTextField(context),
                    SizedBox(height: 12.v),
                    _buildRow(context),
                    SizedBox(height: 12.v),
                    _buildRow1(context),
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
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Container(
            height: 183.v,
            width: 284.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDecorativeline,
                  height: 151.v,
                  width: 349.h,
                  alignment: Alignment.bottomRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDecorativeline,
                  height: 151.v,
                  width: 390.h,
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 185.v,
                    width: 284.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle185x284,
                          height: 185.v,
                          width: 284.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20.h,
                              top: 15.v,
                              right: 20.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVisa,
                                      height: 13.v,
                                      width: 42.h,
                                      margin: EdgeInsets.only(
                                        top: 3.v,
                                        bottom: 1.v,
                                      ),
                                    ),
                                    Text(
                                      "Mono",
                                      style: CustomTextStyles
                                          .labelLargeIBMPlexMonoOnPrimaryContainerSemiBold,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 31.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 17.v,
                                    width: 23.h,
                                    decoration: AppDecoration.gradientGrayToGray
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgVolume,
                                      height: 17.v,
                                      width: 23.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 33.v),
                                Text(
                                  "6219  8610  2888  8075",
                                  style: CustomTextStyles
                                      .labelLargeIBMPlexMonoOnPrimaryContainer,
                                ),
                                SizedBox(height: 9.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "S.Mostafa Esmaeili".toUpperCase(),
                                        style: CustomTextStyles
                                            .bodySmallIBMPlexMonoOnPrimaryContainer,
                                      ),
                                    ),
                                    Text(
                                      "22/01".toUpperCase(),
                                      style: CustomTextStyles
                                          .bodySmallIBMPlexMonoOnPrimaryContainer,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll1(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder23,
          ),
          child: Container(
            height: 209.v,
            width: 324.h,
            decoration: AppDecoration.gradientTealToCyan.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder23,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.28,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShape,
                    height: 415.v,
                    width: 408.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 211.v,
                    width: 324.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle185x284,
                          height: 211.v,
                          width: 324.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 24.h,
                              top: 21.v,
                              right: 20.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 34.h,
                                      margin: EdgeInsets.only(top: 3.v),
                                      child: Text(
                                        "Debit Card",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 213.h,
                                        bottom: 14.v,
                                      ),
                                      child: Text(
                                        "Mono",
                                        style: CustomTextStyles
                                            .labelLargeIBMPlexMonoOnPrimaryContainerSemiBold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 20.v,
                                    width: 26.h,
                                    decoration: AppDecoration.gradientGrayToGray
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder3,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgVolume,
                                      height: 20.v,
                                      width: 26.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 38.v),
                                Text(
                                  "6219  8610  2888  8075",
                                  style: CustomTextStyles
                                      .labelLargeIBMPlexMonoOnPrimaryContainerBold,
                                ),
                                SizedBox(height: 9.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "Irvan moses".toUpperCase(),
                                        style: CustomTextStyles
                                            .bodyMediumIBMPlexMonoOnPrimaryContainer,
                                      ),
                                    ),
                                    Text(
                                      "22/01".toUpperCase(),
                                      style: CustomTextStyles
                                          .bodyMediumIBMPlexMonoOnPrimaryContainer,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField(BuildContext context) {
    return CustomFloatingTextField(
      controller: floatingTextFieldController,
      labelText: "КАРТ ДЭЭРХ НЭР",
      labelStyle: CustomTextStyles.titleSmallBluegray500Medium,
      hintText: "КАРТ ДЭЭРХ НЭР",
    );
  }

  /// Section Widget
  Widget _buildGroup15(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: group15Controller,
      hintText: "КАРТЫН ДУГААР",
    );
  }

  /// Section Widget
  Widget _buildCVC(BuildContext context) {
    return CustomTextFormField(
      width: 133.h,
      controller: cVCController,
      hintText: "CVC",
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGroup15(context),
        _buildCVC(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return CustomTextFormField(
      width: 220.h,
      controller: fourteenController,
      hintText: "ДУУСАХ ХУГАЦАА  YYYY/MM",
    );
  }

  /// Section Widget
  Widget _buildZIP(BuildContext context) {
    return CustomTextFormField(
      width: 133.h,
      controller: zIPController,
      hintText: "ZIP",
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildFourteen(context),
        _buildZIP(context),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_elevated_button.dart';
import 'package:gankhuyag_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WalletPage extends StatefulWidget {
  const WalletPage({Key? key})
      : super(
          key: key,
        );

  @override
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage>
    with AutomaticKeepAliveClientMixin<WalletPage> {
  @override
  bool get wantKeepAlive => true;
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
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(7.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame92,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: _buildNine(
                            context,
                            spotifyName: "Youtube",
                            date: "Feb 28, 2022",
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: 100.h,
                          text: "Төлөх",
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame9,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Electricity",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 5.v),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Mar 28, 2022",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: 100.h,
                          text: "Төлөх",
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame93,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "House Rent",
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "Mar 31, 2022",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: 100.h,
                          text: "Төлөх",
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 51.v,
                          width: 50.h,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame94,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                            bottom: 4.v,
                          ),
                          child: _buildNine(
                            context,
                            spotifyName: "Spotify",
                            date: "Feb 28, 2022",
                          ),
                        ),
                        Spacer(),
                        CustomElevatedButton(
                          width: 100.h,
                          text: "Төлөх",
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
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

  /// Common widget
  Widget _buildNine(
    BuildContext context, {
    required String spotifyName,
    required String date,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          spotifyName,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          date,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.gray700,
          ),
        ),
      ],
    );
  }
}

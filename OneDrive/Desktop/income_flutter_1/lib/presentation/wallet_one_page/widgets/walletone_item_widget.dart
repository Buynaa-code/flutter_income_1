import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WalletoneItemWidget extends StatelessWidget {
  const WalletoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame950x50,
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
                "Upwork",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "Today",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 14.v,
            bottom: 13.v,
          ),
          child: Text(
            "+  850.00",
            style: CustomTextStyles.titleMediumGreen600,
          ),
        ),
      ],
    );
  }
}

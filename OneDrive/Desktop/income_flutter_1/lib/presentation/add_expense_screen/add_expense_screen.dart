import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';
import 'package:gankhuyag_s_application1/widgets/custom_drop_down.dart';
import 'package:gankhuyag_s_application1/widgets/custom_text_form_field.dart';

class AddExpenseScreen extends StatelessWidget {
  AddExpenseScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController editTextController = TextEditingController();

  TextEditingController iconcalendarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 862.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              _buildLocationSection(context),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 163.v,
                  width: 212.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 47.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup6,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconChevronLeft,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    alignment: Alignment.topLeft,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 52.v),
                  child: Text(
                    "Зарлага нэмэх",
                    style:
                        CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 28.h,
                    top: 131.v,
                    right: 28.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 29.v,
                  ),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ГҮЙЛГЭЭНИЙ НЭР",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 10.v),
                      CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        hintText: "Netflix",
                        items: dropdownItemList,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(20.h, 9.v, 16.h, 9.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage15,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 50.v,
                        ),
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "ҮНИЙН ДҮН",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        height: 50.v,
                        width: 318.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                  " 48.00",
                                  style: CustomTextStyles.titleSmallBluegray500,
                                ),
                              ),
                            ),
                            CustomTextFormField(
                              width: 318.h,
                              controller: editTextController,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "ОГНОО",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        height: 50.v,
                        width: 318.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  bottom: 14.v,
                                ),
                                child: Text(
                                  "Tue, 22 Feb 2022",
                                  style: CustomTextStyles.titleSmallMedium_1,
                                ),
                              ),
                            ),
                            CustomTextFormField(
                              width: 318.h,
                              controller: iconcalendarController,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgIconCalendar,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 50.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "ТӨЛБӨР",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: DottedBorder(
                          color: appTheme.gray30001,
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 1.v,
                            right: 1.h,
                            bottom: 1.v,
                          ),
                          strokeWidth: 1.h,
                          radius: Radius.circular(8),
                          borderType: BorderType.RRect,
                          dashPattern: [
                            5,
                            5,
                          ],
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 79.h,
                              vertical: 12.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIconPlusCircle,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "Төлбөр нэмэх",
                                    style: CustomTextStyles.titleSmallMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 68.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28.h,
          vertical: 58.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup30,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 6.v,
          width: 26.h,
        ),
      ),
    );
  }
}

import '../wallet_one_page/widgets/walletone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WalletOnePage extends StatefulWidget {
  const WalletOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  WalletOnePageState createState() => WalletOnePageState();
}

class WalletOnePageState extends State<WalletOnePage>
    with AutomaticKeepAliveClientMixin<WalletOnePage> {
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
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 16.v,
                    );
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return WalletoneItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

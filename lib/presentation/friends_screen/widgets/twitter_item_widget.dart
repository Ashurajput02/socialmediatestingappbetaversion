import '../models/twitter_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testbetaversion125november2023/core/app_export.dart';

// ignore: must_be_immutable
class TwitterItemWidget extends StatelessWidget {
  TwitterItemWidget(
    this.twitterItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwitterItemModel twitterItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: twitterItemModelObj?.twitter,
        height: 50.adaptSize,
        width: 50.adaptSize,
      ),
    );
  }
}

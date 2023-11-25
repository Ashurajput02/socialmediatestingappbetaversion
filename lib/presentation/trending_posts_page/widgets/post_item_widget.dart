import '../models/post_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testbetaversion125november2023/core/app_export.dart';

// ignore: must_be_immutable
class PostItemWidget extends StatelessWidget {
  PostItemWidget(
    this.postItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PostItemModel postItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2135x35,
                height: 35.adaptSize,
                width: 35.adaptSize,
                radius: BorderRadius.circular(
                  17.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postItemModelObj.rizalReynaldhi!,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      postItemModelObj.duration!,
                      style: CustomTextStyles.labelMediumBluegray100,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 141.h,
            child: Text(
              postItemModelObj.description!,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            children: [
              Text(
                postItemModelObj.bali!,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  postItemModelObj.dreams!,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 17.v,
                width: 19.h,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 1.v,
                ),
                child: Text(
                  postItemModelObj.zipcode!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 18.v,
                width: 19.h,
                margin: EdgeInsets.only(left: 29.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                ),
                child: Text(
                  postItemModelObj.eightHundred!,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

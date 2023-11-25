import '../models/trendingposts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:testbetaversion125november2023/core/app_export.dart';

// ignore: must_be_immutable
class TrendingpostsItemWidget extends StatelessWidget {
  TrendingpostsItemWidget(
    this.trendingpostsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TrendingpostsItemModel trendingpostsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 221.v,
            width: 382.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: trendingpostsItemModelObj?.image,
                  height: 221.v,
                  width: 382.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 17.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToBlueGray
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse7,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            25.h,
                          ),
                          margin: EdgeInsets.only(top: 135.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 138.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                trendingpostsItemModelObj.rickOnad!,
                                style: CustomTextStyles.titleLargePrimary,
                              ),
                              SizedBox(height: 6.v),
                              Text(
                                trendingpostsItemModelObj.time!,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Container(
            width: 335.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: Text(
              trendingpostsItemModelObj.thisIsTheMoment!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    trendingpostsItemModelObj.huge!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 1.v,
                  ),
                  child: Text(
                    trendingpostsItemModelObj.fotography!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    trendingpostsItemModelObj.nature!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.v),
        ],
      ),
    );
  }
}

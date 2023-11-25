// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'post_item_model.dart';

/// This class defines the variables used in the [trending_posts_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingPostsModel extends Equatable {
  TrendingPostsModel({this.postItemList = const []}) {}

  List<PostItemModel> postItemList;

  TrendingPostsModel copyWith({List<PostItemModel>? postItemList}) {
    return TrendingPostsModel(
      postItemList: postItemList ?? this.postItemList,
    );
  }

  @override
  List<Object?> get props => [postItemList];
}

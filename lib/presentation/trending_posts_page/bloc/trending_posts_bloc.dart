import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/post_item_model.dart';
import 'package:testbetaversion125november2023/presentation/trending_posts_page/models/trending_posts_model.dart';
part 'trending_posts_event.dart';
part 'trending_posts_state.dart';

/// A bloc that manages the state of a TrendingPosts according to the event that is dispatched to it.
class TrendingPostsBloc extends Bloc<TrendingPostsEvent, TrendingPostsState> {
  TrendingPostsBloc(TrendingPostsState initialState) : super(initialState) {
    on<TrendingPostsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingPostsInitialEvent event,
    Emitter<TrendingPostsState> emit,
  ) async {
    emit(state.copyWith(
        trendingPostsModelObj: state.trendingPostsModelObj
            ?.copyWith(postItemList: fillPostItemList())));
  }

  List<PostItemModel> fillPostItemList() {
    return [
      PostItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          description:
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
          bali: "#Bali",
          dreams: "#dreams",
          zipcode: "2200",
          eightHundred: "800"),
      PostItemModel(
          rizalReynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          description:
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
          bali: "#Bali",
          dreams: "#dreams",
          zipcode: "2200",
          eightHundred: "800")
    ];
  }
}

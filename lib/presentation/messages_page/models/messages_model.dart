// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories2_item_model.dart';
import 'richardalves_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel({
    this.stories2ItemList = const [],
    this.richardalvesItemList = const [],
  }) {}

  List<Stories2ItemModel> stories2ItemList;

  List<RichardalvesItemModel> richardalvesItemList;

  MessagesModel copyWith({
    List<Stories2ItemModel>? stories2ItemList,
    List<RichardalvesItemModel>? richardalvesItemList,
  }) {
    return MessagesModel(
      stories2ItemList: stories2ItemList ?? this.stories2ItemList,
      richardalvesItemList: richardalvesItemList ?? this.richardalvesItemList,
    );
  }

  @override
  List<Object?> get props => [stories2ItemList, richardalvesItemList];
}

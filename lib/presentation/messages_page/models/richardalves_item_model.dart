/// This class is used in the [richardalves_item_widget] screen.
class RichardalvesItemModel {
  RichardalvesItemModel({
    this.richardAlves,
    this.time,
    this.heyBroWhereAre,
    this.id,
  }) {
    richardAlves = richardAlves ?? "Richard Alves";
    time = time ?? "10:00 AM";
    heyBroWhereAre = heyBroWhereAre ?? "Hey bro, where are you?";
    id = id ?? "";
  }

  String? richardAlves;

  String? time;

  String? heyBroWhereAre;

  String? id;
}

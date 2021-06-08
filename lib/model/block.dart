import 'package:json_annotation/json_annotation.dart';

part 'block.g.dart';

@JsonSerializable()
class Block {
  Block();

  @JsonKey(name: "center_id")
  int centerId;

  @JsonKey(name: "name")
  String name;

  @JsonKey(name: "address")
  String address;

  @JsonKey(name: "state_name")
  String state;

  @JsonKey(name: "district_name")
  String districtName;

  @JsonKey(name: "block_name")
  String blockName;

  @JsonKey(name: "pincode")
  int pinCode;

  @JsonKey(name: "from")
  String timeFrom;

  @JsonKey(name: "to")
  String timeTo;

  @JsonKey(name: "date")
  String date;

  @JsonKey(name: "available_capacity_dose1")
  int availableDose1;

  @JsonKey(name: "available_capacity_dose2")
  int availableDose2;

  @JsonKey(name: "available_capacity")
  int availableCapacity;

  @JsonKey(name: "min_age_limit")
  int minAgeLimit;

  @JsonKey(name: "vaccine")
  String vaccineName;

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
  Map<String, dynamic> toJson() => _$BlockToJson(this);
}

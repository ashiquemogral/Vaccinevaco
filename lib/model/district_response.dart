import 'package:flutter_aarogya_setu/model/district.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district_response.g.dart';

@JsonSerializable()
class DistrictResponse {
  DistrictResponse();

  @JsonKey(name: "districts")
  List<District> district;

  factory DistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DistrictResponseToJson(this);
}

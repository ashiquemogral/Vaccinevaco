import 'package:flutter_aarogya_setu/model/block.dart';
import 'package:json_annotation/json_annotation.dart';

part 'block_response.g.dart';

@JsonSerializable()
class BlockResponse {
  BlockResponse();

  @JsonKey(name: "sessions")
  List<Block> block;

  factory BlockResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BlockResponseToJson(this);
}

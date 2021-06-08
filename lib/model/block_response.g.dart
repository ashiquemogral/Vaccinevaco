// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlockResponse _$BlockResponseFromJson(Map<String, dynamic> json) {
  return BlockResponse()
    ..block = (json['sessions'] as List)
        ?.map(
            (e) => e == null ? null : Block.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$BlockResponseToJson(BlockResponse instance) =>
    <String, dynamic>{
      'sessions': instance.block,
    };

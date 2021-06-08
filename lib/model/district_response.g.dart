// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictResponse _$DistrictResponseFromJson(Map<String, dynamic> json) {
  return DistrictResponse()
    ..district = (json['districts'] as List)
        ?.map((e) =>
            e == null ? null : District.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DistrictResponseToJson(DistrictResponse instance) =>
    <String, dynamic>{
      'districts': instance.district,
    };

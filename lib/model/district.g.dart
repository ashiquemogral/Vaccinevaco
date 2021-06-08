// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

District _$DistrictFromJson(Map<String, dynamic> json) {
  return District()
    ..distId = json['district_id'] as int
    ..distName = json['district_name'] as String;
}

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'district_id': instance.distId,
      'district_name': instance.distName,
    };

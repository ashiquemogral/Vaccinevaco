// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) {
  return Block()
    ..centerId = json['center_id'] as int
    ..name = json['name'] as String
    ..address = json['address'] as String
    ..state = json['state_name'] as String
    ..districtName = json['district_name'] as String
    ..blockName = json['block_name'] as String
    ..pinCode = json['pincode'] as int
    ..timeFrom = json['from'] as String
    ..timeTo = json['to'] as String
    ..date = json['date'] as String
    ..availableDose1 = json['available_capacity_dose1'] as int
    ..availableDose2 = json['available_capacity_dose2'] as int
    ..availableCapacity = json['available_capacity'] as int
    ..minAgeLimit = json['min_age_limit'] as int
    ..vaccineName = json['vaccine'] as String;
}

Map<String, dynamic> _$BlockToJson(Block instance) => <String, dynamic>{
      'center_id': instance.centerId,
      'name': instance.name,
      'address': instance.address,
      'state_name': instance.state,
      'district_name': instance.districtName,
      'block_name': instance.blockName,
      'pincode': instance.pinCode,
      'from': instance.timeFrom,
      'to': instance.timeTo,
      'date': instance.date,
      'available_capacity_dose1': instance.availableDose1,
      'available_capacity_dose2': instance.availableDose2,
      'available_capacity': instance.availableCapacity,
      'min_age_limit': instance.minAgeLimit,
      'vaccine': instance.vaccineName,
    };

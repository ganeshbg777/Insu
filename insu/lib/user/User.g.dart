// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'firstName',
      'lastName',
      'phoneNumber',
      'workEmail',
      'company'
    ],
  );
  return User(
    json['firstName'] as String? ?? '',
    json['lastName'] as String? ?? '',
    json['middleName'] as String? ?? '',
    json['phoneNumber'] as String? ?? '',
    json['workEmail'] as String,
    json['company'] as String? ?? '',
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'phoneNumber': instance.phoneNumber,
      'workEmail': instance.workEmail,
      'company': instance.company,
    };

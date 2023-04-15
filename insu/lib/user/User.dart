import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User {
  @JsonKey(required: true, defaultValue: "")
  String firstName;

  @JsonKey(required: true, defaultValue: "")
  String lastName;

  @JsonKey(required: false, defaultValue: "")
  String middleName;

  @JsonKey(required: true, defaultValue: "")
  String phoneNumber;

  @JsonKey(required: true)
  String workEmail;

  @JsonKey(required: true, defaultValue: "")
  String company;

  User(this.firstName, this.lastName, this.middleName, this.phoneNumber,
      this.workEmail, this.company) {}

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

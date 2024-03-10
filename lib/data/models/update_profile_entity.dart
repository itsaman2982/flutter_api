import 'package:reputation_sensei/generated/json/base/json_field.dart';
import 'package:reputation_sensei/generated/json/update_profile_entity.g.dart';
import 'dart:convert';
export 'package:reputation_sensei/generated/json/update_profile_entity.g.dart';

@JsonSerializable()
class UpdateProfileEntity {
	int? status = 0;
	String? message = '';
	UpdateProfileData? data;

	UpdateProfileEntity();

	factory UpdateProfileEntity.fromJson(Map<String, dynamic> json) => $UpdateProfileEntityFromJson(json);

	Map<String, dynamic> toJson() => $UpdateProfileEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class UpdateProfileData {
	@JSONField(name: "FirstName")
	String? firstName = '';
	@JSONField(name: "LastName")
	String? lastName = '';
	@JSONField(name: "Email")
	String? email = '';
	@JSONField(name: "Phone")
	String? phone = '';
	@JSONField(name: "Password")
	String? password = '';
	@JSONField(name: "Token")
	String? token = '';
	@JSONField(name: "FMCToken")
	String? fMCToken = '';
	@JSONField(name: "IsFirstTimeLogin")
	bool? isFirstTimeLogin = false;
	@JSONField(name: "DriverPictureId")
	int? driverPictureId = 0;
	@JSONField(name: "DriverPictureUrl")
	String? driverPictureUrl = '';
	@JSONField(name: "Deleted")
	bool? deleted = false;
	@JSONField(name: "CreatedOnUtc")
	String? createdOnUtc = '';
	@JSONField(name: "UpdatedOnUtc")
	String? updatedOnUtc = '';
	@JSONField(name: "CreatedBy")
	int? createdBy = 0;
	@JSONField(name: "UpdatedBy")
	int? updatedBy = 0;

	UpdateProfileData();

	factory UpdateProfileData.fromJson(Map<String, dynamic> json) => $UpdateProfileDataFromJson(json);

	Map<String, dynamic> toJson() => $UpdateProfileDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
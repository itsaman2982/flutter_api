import 'package:reputation_sensei/generated/json/base/json_field.dart';
import 'package:reputation_sensei/generated/json/login_entity.g.dart';
import 'dart:convert';
export 'package:reputation_sensei/generated/json/login_entity.g.dart';

@JsonSerializable()
class LoginEntity {
	int? status = 0;
	String? message = '';
	LoginData? data;

	LoginEntity();

	factory LoginEntity.fromJson(Map<String, dynamic> json) => $LoginEntityFromJson(json);

	Map<String, dynamic> toJson() => $LoginEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class LoginData {
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

	LoginData();

	factory LoginData.fromJson(Map<String, dynamic> json) => $LoginDataFromJson(json);

	Map<String, dynamic> toJson() => $LoginDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
import 'package:reputation_sensei/generated/json/base/json_field.dart';
import 'package:reputation_sensei/generated/json/logout_entity.g.dart';
import 'dart:convert';
export 'package:reputation_sensei/generated/json/logout_entity.g.dart';

@JsonSerializable()
class LogoutEntity {
	int? status = 0;
	String? message = '';
	dynamic data;

	LogoutEntity();

	factory LogoutEntity.fromJson(Map<String, dynamic> json) => $LogoutEntityFromJson(json);

	Map<String, dynamic> toJson() => $LogoutEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
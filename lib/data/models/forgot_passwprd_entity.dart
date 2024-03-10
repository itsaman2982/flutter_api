import 'package:reputation_sensei/generated/json/base/json_field.dart';
import 'package:reputation_sensei/generated/json/forgot_passwprd_entity.g.dart';
import 'dart:convert';
export 'package:reputation_sensei/generated/json/forgot_passwprd_entity.g.dart';

@JsonSerializable()
class ForgotPasswprdEntity {
	int? status = 0;
	String? message = '';
	dynamic data;

	ForgotPasswprdEntity();

	factory ForgotPasswprdEntity.fromJson(Map<String, dynamic> json) => $ForgotPasswprdEntityFromJson(json);

	Map<String, dynamic> toJson() => $ForgotPasswprdEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
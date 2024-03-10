import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/forgot_passwprd_entity.dart';

ForgotPasswprdEntity $ForgotPasswprdEntityFromJson(Map<String, dynamic> json) {
  final ForgotPasswprdEntity forgotPasswprdEntity = ForgotPasswprdEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    forgotPasswprdEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    forgotPasswprdEntity.message = message;
  }
  final dynamic data = json['data'];
  if (data != null) {
    forgotPasswprdEntity.data = data;
  }
  return forgotPasswprdEntity;
}

Map<String, dynamic> $ForgotPasswprdEntityToJson(ForgotPasswprdEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data;
  return data;
}

extension ForgotPasswprdEntityExtension on ForgotPasswprdEntity {
  ForgotPasswprdEntity copyWith({
    int? status,
    String? message,
    dynamic data,
  }) {
    return ForgotPasswprdEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}
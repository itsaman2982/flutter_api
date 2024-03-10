import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/logout_entity.dart';

LogoutEntity $LogoutEntityFromJson(Map<String, dynamic> json) {
  final LogoutEntity logoutEntity = LogoutEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    logoutEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    logoutEntity.message = message;
  }
  final dynamic data = json['data'];
  if (data != null) {
    logoutEntity.data = data;
  }
  return logoutEntity;
}

Map<String, dynamic> $LogoutEntityToJson(LogoutEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data;
  return data;
}

extension LogoutEntityExtension on LogoutEntity {
  LogoutEntity copyWith({
    int? status,
    String? message,
    dynamic data,
  }) {
    return LogoutEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}
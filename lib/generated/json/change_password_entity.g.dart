import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/change_password_entity.dart';

ChangePasswordEntity $ChangePasswordEntityFromJson(Map<String, dynamic> json) {
  final ChangePasswordEntity changePasswordEntity = ChangePasswordEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    changePasswordEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    changePasswordEntity.message = message;
  }
  final ChangePasswordData? data = jsonConvert.convert<ChangePasswordData>(
      json['data']);
  if (data != null) {
    changePasswordEntity.data = data;
  }
  return changePasswordEntity;
}

Map<String, dynamic> $ChangePasswordEntityToJson(ChangePasswordEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension ChangePasswordEntityExtension on ChangePasswordEntity {
  ChangePasswordEntity copyWith({
    int? status,
    String? message,
    ChangePasswordData? data,
  }) {
    return ChangePasswordEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

ChangePasswordData $ChangePasswordDataFromJson(Map<String, dynamic> json) {
  final ChangePasswordData changePasswordData = ChangePasswordData();
  final String? firstName = jsonConvert.convert<String>(json['FirstName']);
  if (firstName != null) {
    changePasswordData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['LastName']);
  if (lastName != null) {
    changePasswordData.lastName = lastName;
  }
  final String? email = jsonConvert.convert<String>(json['Email']);
  if (email != null) {
    changePasswordData.email = email;
  }
  final String? phone = jsonConvert.convert<String>(json['Phone']);
  if (phone != null) {
    changePasswordData.phone = phone;
  }
  final String? password = jsonConvert.convert<String>(json['Password']);
  if (password != null) {
    changePasswordData.password = password;
  }
  final String? token = jsonConvert.convert<String>(json['Token']);
  if (token != null) {
    changePasswordData.token = token;
  }
  final String? fMCToken = jsonConvert.convert<String>(json['FMCToken']);
  if (fMCToken != null) {
    changePasswordData.fMCToken = fMCToken;
  }
  final bool? isFirstTimeLogin = jsonConvert.convert<bool>(
      json['IsFirstTimeLogin']);
  if (isFirstTimeLogin != null) {
    changePasswordData.isFirstTimeLogin = isFirstTimeLogin;
  }
  final int? driverPictureId = jsonConvert.convert<int>(
      json['DriverPictureId']);
  if (driverPictureId != null) {
    changePasswordData.driverPictureId = driverPictureId;
  }
  final String? driverPictureUrl = jsonConvert.convert<String>(
      json['DriverPictureUrl']);
  if (driverPictureUrl != null) {
    changePasswordData.driverPictureUrl = driverPictureUrl;
  }
  final bool? deleted = jsonConvert.convert<bool>(json['Deleted']);
  if (deleted != null) {
    changePasswordData.deleted = deleted;
  }
  final String? createdOnUtc = jsonConvert.convert<String>(
      json['CreatedOnUtc']);
  if (createdOnUtc != null) {
    changePasswordData.createdOnUtc = createdOnUtc;
  }
  final String? updatedOnUtc = jsonConvert.convert<String>(
      json['UpdatedOnUtc']);
  if (updatedOnUtc != null) {
    changePasswordData.updatedOnUtc = updatedOnUtc;
  }
  final int? createdBy = jsonConvert.convert<int>(json['CreatedBy']);
  if (createdBy != null) {
    changePasswordData.createdBy = createdBy;
  }
  final int? updatedBy = jsonConvert.convert<int>(json['UpdatedBy']);
  if (updatedBy != null) {
    changePasswordData.updatedBy = updatedBy;
  }
  return changePasswordData;
}

Map<String, dynamic> $ChangePasswordDataToJson(ChangePasswordData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['FirstName'] = entity.firstName;
  data['LastName'] = entity.lastName;
  data['Email'] = entity.email;
  data['Phone'] = entity.phone;
  data['Password'] = entity.password;
  data['Token'] = entity.token;
  data['FMCToken'] = entity.fMCToken;
  data['IsFirstTimeLogin'] = entity.isFirstTimeLogin;
  data['DriverPictureId'] = entity.driverPictureId;
  data['DriverPictureUrl'] = entity.driverPictureUrl;
  data['Deleted'] = entity.deleted;
  data['CreatedOnUtc'] = entity.createdOnUtc;
  data['UpdatedOnUtc'] = entity.updatedOnUtc;
  data['CreatedBy'] = entity.createdBy;
  data['UpdatedBy'] = entity.updatedBy;
  return data;
}

extension ChangePasswordDataExtension on ChangePasswordData {
  ChangePasswordData copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? password,
    String? token,
    String? fMCToken,
    bool? isFirstTimeLogin,
    int? driverPictureId,
    String? driverPictureUrl,
    bool? deleted,
    String? createdOnUtc,
    String? updatedOnUtc,
    int? createdBy,
    int? updatedBy,
  }) {
    return ChangePasswordData()
      ..firstName = firstName ?? this.firstName
      ..lastName = lastName ?? this.lastName
      ..email = email ?? this.email
      ..phone = phone ?? this.phone
      ..password = password ?? this.password
      ..token = token ?? this.token
      ..fMCToken = fMCToken ?? this.fMCToken
      ..isFirstTimeLogin = isFirstTimeLogin ?? this.isFirstTimeLogin
      ..driverPictureId = driverPictureId ?? this.driverPictureId
      ..driverPictureUrl = driverPictureUrl ?? this.driverPictureUrl
      ..deleted = deleted ?? this.deleted
      ..createdOnUtc = createdOnUtc ?? this.createdOnUtc
      ..updatedOnUtc = updatedOnUtc ?? this.updatedOnUtc
      ..createdBy = createdBy ?? this.createdBy
      ..updatedBy = updatedBy ?? this.updatedBy;
  }
}
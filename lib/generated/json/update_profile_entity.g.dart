import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/update_profile_entity.dart';

UpdateProfileEntity $UpdateProfileEntityFromJson(Map<String, dynamic> json) {
  final UpdateProfileEntity updateProfileEntity = UpdateProfileEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    updateProfileEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    updateProfileEntity.message = message;
  }
  final UpdateProfileData? data = jsonConvert.convert<UpdateProfileData>(
      json['data']);
  if (data != null) {
    updateProfileEntity.data = data;
  }
  return updateProfileEntity;
}

Map<String, dynamic> $UpdateProfileEntityToJson(UpdateProfileEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension UpdateProfileEntityExtension on UpdateProfileEntity {
  UpdateProfileEntity copyWith({
    int? status,
    String? message,
    UpdateProfileData? data,
  }) {
    return UpdateProfileEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

UpdateProfileData $UpdateProfileDataFromJson(Map<String, dynamic> json) {
  final UpdateProfileData updateProfileData = UpdateProfileData();
  final String? firstName = jsonConvert.convert<String>(json['FirstName']);
  if (firstName != null) {
    updateProfileData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['LastName']);
  if (lastName != null) {
    updateProfileData.lastName = lastName;
  }
  final String? email = jsonConvert.convert<String>(json['Email']);
  if (email != null) {
    updateProfileData.email = email;
  }
  final String? phone = jsonConvert.convert<String>(json['Phone']);
  if (phone != null) {
    updateProfileData.phone = phone;
  }
  final String? password = jsonConvert.convert<String>(json['Password']);
  if (password != null) {
    updateProfileData.password = password;
  }
  final String? token = jsonConvert.convert<String>(json['Token']);
  if (token != null) {
    updateProfileData.token = token;
  }
  final String? fMCToken = jsonConvert.convert<String>(json['FMCToken']);
  if (fMCToken != null) {
    updateProfileData.fMCToken = fMCToken;
  }
  final bool? isFirstTimeLogin = jsonConvert.convert<bool>(
      json['IsFirstTimeLogin']);
  if (isFirstTimeLogin != null) {
    updateProfileData.isFirstTimeLogin = isFirstTimeLogin;
  }
  final int? driverPictureId = jsonConvert.convert<int>(
      json['DriverPictureId']);
  if (driverPictureId != null) {
    updateProfileData.driverPictureId = driverPictureId;
  }
  final String? driverPictureUrl = jsonConvert.convert<String>(
      json['DriverPictureUrl']);
  if (driverPictureUrl != null) {
    updateProfileData.driverPictureUrl = driverPictureUrl;
  }
  final bool? deleted = jsonConvert.convert<bool>(json['Deleted']);
  if (deleted != null) {
    updateProfileData.deleted = deleted;
  }
  final String? createdOnUtc = jsonConvert.convert<String>(
      json['CreatedOnUtc']);
  if (createdOnUtc != null) {
    updateProfileData.createdOnUtc = createdOnUtc;
  }
  final String? updatedOnUtc = jsonConvert.convert<String>(
      json['UpdatedOnUtc']);
  if (updatedOnUtc != null) {
    updateProfileData.updatedOnUtc = updatedOnUtc;
  }
  final int? createdBy = jsonConvert.convert<int>(json['CreatedBy']);
  if (createdBy != null) {
    updateProfileData.createdBy = createdBy;
  }
  final int? updatedBy = jsonConvert.convert<int>(json['UpdatedBy']);
  if (updatedBy != null) {
    updateProfileData.updatedBy = updatedBy;
  }
  return updateProfileData;
}

Map<String, dynamic> $UpdateProfileDataToJson(UpdateProfileData entity) {
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

extension UpdateProfileDataExtension on UpdateProfileData {
  UpdateProfileData copyWith({
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
    return UpdateProfileData()
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
import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/edit_profile_entity.dart';

EditProfileEntity $EditProfileEntityFromJson(Map<String, dynamic> json) {
  final EditProfileEntity editProfileEntity = EditProfileEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    editProfileEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    editProfileEntity.message = message;
  }
  final EditProfileData? data = jsonConvert.convert<EditProfileData>(
      json['data']);
  if (data != null) {
    editProfileEntity.data = data;
  }
  return editProfileEntity;
}

Map<String, dynamic> $EditProfileEntityToJson(EditProfileEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension EditProfileEntityExtension on EditProfileEntity {
  EditProfileEntity copyWith({
    int? status,
    String? message,
    EditProfileData? data,
  }) {
    return EditProfileEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

EditProfileData $EditProfileDataFromJson(Map<String, dynamic> json) {
  final EditProfileData editProfileData = EditProfileData();
  final String? firstName = jsonConvert.convert<String>(json['FirstName']);
  if (firstName != null) {
    editProfileData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['LastName']);
  if (lastName != null) {
    editProfileData.lastName = lastName;
  }
  final String? email = jsonConvert.convert<String>(json['Email']);
  if (email != null) {
    editProfileData.email = email;
  }
  final String? phone = jsonConvert.convert<String>(json['Phone']);
  if (phone != null) {
    editProfileData.phone = phone;
  }
  final String? password = jsonConvert.convert<String>(json['Password']);
  if (password != null) {
    editProfileData.password = password;
  }
  final String? token = jsonConvert.convert<String>(json['Token']);
  if (token != null) {
    editProfileData.token = token;
  }
  final String? fMCToken = jsonConvert.convert<String>(json['FMCToken']);
  if (fMCToken != null) {
    editProfileData.fMCToken = fMCToken;
  }
  final bool? isFirstTimeLogin = jsonConvert.convert<bool>(
      json['IsFirstTimeLogin']);
  if (isFirstTimeLogin != null) {
    editProfileData.isFirstTimeLogin = isFirstTimeLogin;
  }
  final int? driverPictureId = jsonConvert.convert<int>(
      json['DriverPictureId']);
  if (driverPictureId != null) {
    editProfileData.driverPictureId = driverPictureId;
  }
  final String? driverPictureUrl = jsonConvert.convert<String>(
      json['DriverPictureUrl']);
  if (driverPictureUrl != null) {
    editProfileData.driverPictureUrl = driverPictureUrl;
  }
  final bool? deleted = jsonConvert.convert<bool>(json['Deleted']);
  if (deleted != null) {
    editProfileData.deleted = deleted;
  }
  final String? createdOnUtc = jsonConvert.convert<String>(
      json['CreatedOnUtc']);
  if (createdOnUtc != null) {
    editProfileData.createdOnUtc = createdOnUtc;
  }
  final String? updatedOnUtc = jsonConvert.convert<String>(
      json['UpdatedOnUtc']);
  if (updatedOnUtc != null) {
    editProfileData.updatedOnUtc = updatedOnUtc;
  }
  final int? createdBy = jsonConvert.convert<int>(json['CreatedBy']);
  if (createdBy != null) {
    editProfileData.createdBy = createdBy;
  }
  final int? updatedBy = jsonConvert.convert<int>(json['UpdatedBy']);
  if (updatedBy != null) {
    editProfileData.updatedBy = updatedBy;
  }
  return editProfileData;
}

Map<String, dynamic> $EditProfileDataToJson(EditProfileData entity) {
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

extension EditProfileDataExtension on EditProfileData {
  EditProfileData copyWith({
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
    return EditProfileData()
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
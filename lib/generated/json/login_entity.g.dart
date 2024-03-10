import 'package:reputation_sensei/generated/json/base/json_convert_content.dart';
import 'package:reputation_sensei/data/models/login_entity.dart';

LoginEntity $LoginEntityFromJson(Map<String, dynamic> json) {
  final LoginEntity loginEntity = LoginEntity();
  final int? status = jsonConvert.convert<int>(json['status']);
  if (status != null) {
    loginEntity.status = status;
  }
  final String? message = jsonConvert.convert<String>(json['message']);
  if (message != null) {
    loginEntity.message = message;
  }
  final LoginData? data = jsonConvert.convert<LoginData>(json['data']);
  if (data != null) {
    loginEntity.data = data;
  }
  return loginEntity;
}

Map<String, dynamic> $LoginEntityToJson(LoginEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['status'] = entity.status;
  data['message'] = entity.message;
  data['data'] = entity.data?.toJson();
  return data;
}

extension LoginEntityExtension on LoginEntity {
  LoginEntity copyWith({
    int? status,
    String? message,
    LoginData? data,
  }) {
    return LoginEntity()
      ..status = status ?? this.status
      ..message = message ?? this.message
      ..data = data ?? this.data;
  }
}

LoginData $LoginDataFromJson(Map<String, dynamic> json) {
  final LoginData loginData = LoginData();
  final String? firstName = jsonConvert.convert<String>(json['FirstName']);
  if (firstName != null) {
    loginData.firstName = firstName;
  }
  final String? lastName = jsonConvert.convert<String>(json['LastName']);
  if (lastName != null) {
    loginData.lastName = lastName;
  }
  final String? email = jsonConvert.convert<String>(json['Email']);
  if (email != null) {
    loginData.email = email;
  }
  final String? phone = jsonConvert.convert<String>(json['Phone']);
  if (phone != null) {
    loginData.phone = phone;
  }
  final String? password = jsonConvert.convert<String>(json['Password']);
  if (password != null) {
    loginData.password = password;
  }
  final String? token = jsonConvert.convert<String>(json['Token']);
  if (token != null) {
    loginData.token = token;
  }
  final String? fMCToken = jsonConvert.convert<String>(json['FMCToken']);
  if (fMCToken != null) {
    loginData.fMCToken = fMCToken;
  }
  final bool? isFirstTimeLogin = jsonConvert.convert<bool>(
      json['IsFirstTimeLogin']);
  if (isFirstTimeLogin != null) {
    loginData.isFirstTimeLogin = isFirstTimeLogin;
  }
  final int? driverPictureId = jsonConvert.convert<int>(
      json['DriverPictureId']);
  if (driverPictureId != null) {
    loginData.driverPictureId = driverPictureId;
  }
  final String? driverPictureUrl = jsonConvert.convert<String>(
      json['DriverPictureUrl']);
  if (driverPictureUrl != null) {
    loginData.driverPictureUrl = driverPictureUrl;
  }
  final bool? deleted = jsonConvert.convert<bool>(json['Deleted']);
  if (deleted != null) {
    loginData.deleted = deleted;
  }
  final String? createdOnUtc = jsonConvert.convert<String>(
      json['CreatedOnUtc']);
  if (createdOnUtc != null) {
    loginData.createdOnUtc = createdOnUtc;
  }
  final String? updatedOnUtc = jsonConvert.convert<String>(
      json['UpdatedOnUtc']);
  if (updatedOnUtc != null) {
    loginData.updatedOnUtc = updatedOnUtc;
  }
  final int? createdBy = jsonConvert.convert<int>(json['CreatedBy']);
  if (createdBy != null) {
    loginData.createdBy = createdBy;
  }
  final int? updatedBy = jsonConvert.convert<int>(json['UpdatedBy']);
  if (updatedBy != null) {
    loginData.updatedBy = updatedBy;
  }
  return loginData;
}

Map<String, dynamic> $LoginDataToJson(LoginData entity) {
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

extension LoginDataExtension on LoginData {
  LoginData copyWith({
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
    return LoginData()
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
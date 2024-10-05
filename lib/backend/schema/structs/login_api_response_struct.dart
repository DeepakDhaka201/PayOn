// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginApiResponseStruct extends BaseStruct {
  LoginApiResponseStruct({
    String? phoneNumber,
    String? secret,
  })  : _phoneNumber = phoneNumber,
        _secret = secret;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "secret" field.
  String? _secret;
  String get secret => _secret ?? '';
  set secret(String? val) => _secret = val;

  bool hasSecret() => _secret != null;

  static LoginApiResponseStruct fromMap(Map<String, dynamic> data) =>
      LoginApiResponseStruct(
        phoneNumber: data['phoneNumber'] as String?,
        secret: data['secret'] as String?,
      );

  static LoginApiResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginApiResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'phoneNumber': _phoneNumber,
        'secret': _secret,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'secret': serializeParam(
          _secret,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginApiResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoginApiResponseStruct(
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        secret: deserializeParam(
          data['secret'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginApiResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginApiResponseStruct &&
        phoneNumber == other.phoneNumber &&
        secret == other.secret;
  }

  @override
  int get hashCode => const ListEquality().hash([phoneNumber, secret]);
}

LoginApiResponseStruct createLoginApiResponseStruct({
  String? phoneNumber,
  String? secret,
}) =>
    LoginApiResponseStruct(
      phoneNumber: phoneNumber,
      secret: secret,
    );

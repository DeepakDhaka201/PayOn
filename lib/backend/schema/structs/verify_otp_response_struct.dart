// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VerifyOtpResponseStruct extends BaseStruct {
  VerifyOtpResponseStruct({
    String? apiToken,
  }) : _apiToken = apiToken;

  // "apiToken" field.
  String? _apiToken;
  String get apiToken => _apiToken ?? '';
  set apiToken(String? val) => _apiToken = val;

  bool hasApiToken() => _apiToken != null;

  static VerifyOtpResponseStruct fromMap(Map<String, dynamic> data) =>
      VerifyOtpResponseStruct(
        apiToken: data['apiToken'] as String?,
      );

  static VerifyOtpResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? VerifyOtpResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'apiToken': _apiToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'apiToken': serializeParam(
          _apiToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static VerifyOtpResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VerifyOtpResponseStruct(
        apiToken: deserializeParam(
          data['apiToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VerifyOtpResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VerifyOtpResponseStruct && apiToken == other.apiToken;
  }

  @override
  int get hashCode => const ListEquality().hash([apiToken]);
}

VerifyOtpResponseStruct createVerifyOtpResponseStruct({
  String? apiToken,
}) =>
    VerifyOtpResponseStruct(
      apiToken: apiToken,
    );

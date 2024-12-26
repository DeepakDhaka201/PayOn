// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthResponseStruct extends BaseStruct {
  AuthResponseStruct({
    String? message,
    String? token,
    UserStruct? user,
  })  : _message = message,
        _token = token,
        _user = user;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  static AuthResponseStruct fromMap(Map<String, dynamic> data) =>
      AuthResponseStruct(
        message: data['message'] as String?,
        token: data['token'] as String?,
        user: data['user'] is UserStruct
            ? data['user']
            : UserStruct.maybeFromMap(data['user']),
      );

  static AuthResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'token': _token,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AuthResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthResponseStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AuthResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthResponseStruct &&
        message == other.message &&
        token == other.token &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([message, token, user]);
}

AuthResponseStruct createAuthResponseStruct({
  String? message,
  String? token,
  UserStruct? user,
}) =>
    AuthResponseStruct(
      message: message,
      token: token,
      user: user ?? UserStruct(),
    );

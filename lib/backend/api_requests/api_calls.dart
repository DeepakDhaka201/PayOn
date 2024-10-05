import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start NonLoggedIn Group Code

class NonLoggedInGroup {
  static String getBaseUrl() => 'https://samratmatka.com';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static VerifyOtpCall verifyOtpCall = VerifyOtpCall();
  static SignUpCall signUpCall = SignUpCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
  }) async {
    final baseUrl = NonLoggedInGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyOtpCall {
  Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? otp = '',
    String? secret = '',
  }) async {
    final baseUrl = NonLoggedInGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "otp": "$otp",
  "secret": "$secret"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify Otp',
      apiUrl: '$baseUrl/verify-otp',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phoneNumber = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = NonLoggedInGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "phoneNumber": "$phoneNumber",
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sign Up',
      apiUrl: '$baseUrl/sign-up',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End NonLoggedIn Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start NonLoggedIn Group Code

class NonLoggedInGroup {
  static String getBaseUrl() => 'https://samratmatka.com/api/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendOtpCall sendOtpCall = SendOtpCall();
  static AuthenticateCall authenticateCall = AuthenticateCall();
}

class SendOtpCall {
  Future<ApiCallResponse> call({
    String? mobile = '',
    String? purpose = 'LOGIN',
  }) async {
    final baseUrl = NonLoggedInGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobile": "$mobile",
  "purpose": "$purpose"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendOtp',
      apiUrl: '$baseUrl/auth/send-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
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

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? validity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.validity_minutes''',
      ));
  String? mobile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.mobile''',
      ));
  bool? userExists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user_exists''',
      ));
}

class AuthenticateCall {
  Future<ApiCallResponse> call({
    String? mobile = '',
    String? otp = '',
    String? name = '',
    String? walletPin = '',
    String? referralCode = '',
  }) async {
    final baseUrl = NonLoggedInGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobile": "${escapeStringForJson(mobile)}",
  "otp": "${escapeStringForJson(otp)}",
  "name": "${escapeStringForJson(name)}",
  "wallet_pin": "${escapeStringForJson(walletPin)}",
  "referral_code": "${escapeStringForJson(referralCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authenticate',
      apiUrl: '$baseUrl/auth/authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
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

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

/// End NonLoggedIn Group Code

/// Start LoggedIn Group Code

class LoggedInGroup {
  static String getBaseUrl({
    String? apiToken = '',
  }) =>
      'https://samratmatka.com/api/v1';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [api_token]',
    'Content-Type': 'application/json',
  };
  static DashboardCall dashboardCall = DashboardCall();
  static GetDepositAddressCall getDepositAddressCall = GetDepositAddressCall();
  static CheckDepositCall checkDepositCall = CheckDepositCall();
  static CheckBuyRateCall checkBuyRateCall = CheckBuyRateCall();
  static CheckRatesCall checkRatesCall = CheckRatesCall();
  static InitiateBuyCall initiateBuyCall = InitiateBuyCall();
  static VerifyBuyCall verifyBuyCall = VerifyBuyCall();
  static InitiateSellCall initiateSellCall = InitiateSellCall();
  static SaveBankAccountCall saveBankAccountCall = SaveBankAccountCall();
  static GetBankAccountsCall getBankAccountsCall = GetBankAccountsCall();
  static InitiateWithdrawCall initiateWithdrawCall = InitiateWithdrawCall();
  static GetTransactionsCall getTransactionsCall = GetTransactionsCall();
  static ReferralInfoCall referralInfoCall = ReferralInfoCall();
  static ProfileCall profileCall = ProfileCall();
  static CancelBuyTransactionCall cancelBuyTransactionCall =
      CancelBuyTransactionCall();
  static ActiveBuyOrderCall activeBuyOrderCall = ActiveBuyOrderCall();
  static FetchClaimsCall fetchClaimsCall = FetchClaimsCall();
  static GetAllRatesCall getAllRatesCall = GetAllRatesCall();
  static DashboardVtwoCall dashboardVtwoCall = DashboardVtwoCall();
  static ActiveBuyOrdersWithClaimsCall activeBuyOrdersWithClaimsCall =
      ActiveBuyOrdersWithClaimsCall();
  static SplashConfigCall splashConfigCall = SplashConfigCall();
}

class DashboardCall {
  Future<ApiCallResponse> call({
    String? version,
    String? apiToken = '',
  }) async {
    version ??= FFAppConstants.version.toString();
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard',
      apiUrl: '$baseUrl/dashboard/summary',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? bankAccounts(dynamic response) => getJsonField(
        response,
        r'''$.bank_accounts''',
        true,
      ) as List?;
  List? recentTransactions(dynamic response) => getJsonField(
        response,
        r'''$.recent_transactions''',
        true,
      ) as List?;
  int? walletBalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wallet_balance''',
      ));
}

class GetDepositAddressCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Deposit Address',
      apiUrl: '$baseUrl/transaction/deposit/get-address',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
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

class CheckDepositCall {
  Future<ApiCallResponse> call({
    int? assignmentId,
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check Deposit',
      apiUrl: '$baseUrl/transaction/deposit/check-transaction',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'assignment_id': assignmentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckBuyRateCall {
  Future<ApiCallResponse> call({
    double? amountInr,
    String? paymentMode = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "amount_inr": $amountInr,
  "payment_mode": "${escapeStringForJson(paymentMode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Check Buy Rate',
      apiUrl: '$baseUrl/transaction/buy/calculate-rate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class CheckRatesCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Check Rates',
      apiUrl: '$baseUrl/transaction/rates',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitiateBuyCall {
  Future<ApiCallResponse> call({
    int? claimId,
    String? paymentMode = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "payment_mode": "${escapeStringForJson(paymentMode)}",
  "claim_id": $claimId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Buy',
      apiUrl: '$baseUrl/transaction/buy/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class VerifyBuyCall {
  Future<ApiCallResponse> call({
    int? transactionId,
    String? refNumber = '',
    FFUploadedFile? paymentProof,
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Verify Buy',
      apiUrl: '$baseUrl/transaction/buy/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'transaction_id': transactionId,
        'ref_number': refNumber,
        'payment_proof': paymentProof,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitiateSellCall {
  Future<ApiCallResponse> call({
    double? amountInr,
    String? bankAccountId = '',
    String? paymentMode = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "amount_inr": $amountInr,
  "bank_account_id": "${escapeStringForJson(bankAccountId)}",
  "payment_mode": "${escapeStringForJson(paymentMode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Sell',
      apiUrl: '$baseUrl/transaction/sell/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class SaveBankAccountCall {
  Future<ApiCallResponse> call({
    String? bankName = '',
    String? accountHolder = '',
    String? accountNumber = '',
    String? ifscCode = '',
    String? type = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "bank_name": "${escapeStringForJson(bankName)}",
  "account_holder": "${escapeStringForJson(accountHolder)}",
  "account_number": "${escapeStringForJson(accountNumber)}",
  "ifsc_code": "${escapeStringForJson(ifscCode)}",
  "type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Save Bank Account',
      apiUrl: '$baseUrl/bank/accounts',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class GetBankAccountsCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Bank Accounts',
      apiUrl: '$baseUrl/bank/accounts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitiateWithdrawCall {
  Future<ApiCallResponse> call({
    double? amountUsdt,
    String? walletPin = '',
    String? address = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "amount_usdt": $amountUsdt,
  "address": "${escapeStringForJson(address)}",
  "wallet_pin": "${escapeStringForJson(walletPin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Withdraw',
      apiUrl: '$baseUrl/transaction/withdraw/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class GetTransactionsCall {
  Future<ApiCallResponse> call({
    String? type = '',
    int? page = 1,
    String? status = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transactions',
      apiUrl: '$baseUrl/transaction/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'type': type,
        'page': page,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReferralInfoCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Referral Info',
      apiUrl: '$baseUrl/referral/info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProfileCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Profile',
      apiUrl: '$baseUrl/user/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelBuyTransactionCall {
  Future<ApiCallResponse> call({
    int? transactionId,
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "transaction_id": $transactionId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel Buy Transaction',
      apiUrl: '$baseUrl/transaction/buy/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

class ActiveBuyOrderCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Active Buy Order',
      apiUrl: '$baseUrl/transaction/buy/active',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchClaimsCall {
  Future<ApiCallResponse> call({
    String? sort = '',
    String? bankName = '',
    double? amountInr,
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Claims',
      apiUrl: '$baseUrl/transaction/claims',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'sort': sort,
        'amount_inr': amountInr,
        'bank_name': bankName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllRatesCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Rates',
      apiUrl: '$baseUrl/transaction/rates/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DashboardVtwoCall {
  Future<ApiCallResponse> call({
    int? version,
    String? apiToken = '',
  }) async {
    version ??= FFAppConstants.version;
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard vtwo',
      apiUrl: '$baseUrl/transaction/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {
        'version': version,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ActiveBuyOrdersWithClaimsCall {
  Future<ApiCallResponse> call({
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Active Buy Orders With Claims',
      apiUrl: '$baseUrl/transaction/v2/claims',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SplashConfigCall {
  Future<ApiCallResponse> call({
    String? version = '',
    String? apiToken = '',
  }) async {
    final baseUrl = LoggedInGroup.getBaseUrl(
      apiToken: apiToken,
    );

    final ffApiRequestBody = '''
{
  "version": "${escapeStringForJson(version)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Splash Config',
      apiUrl: '$baseUrl/user/config',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiToken',
        'Content-Type': 'application/json',
      },
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

/// End LoggedIn Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

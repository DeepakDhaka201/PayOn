// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? name,
    String? mobile,
    double? walletBalance,
    String? referralCode,
    String? status,
  })  : _id = id,
        _name = name,
        _mobile = mobile,
        _walletBalance = walletBalance,
        _referralCode = referralCode,
        _status = status;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "wallet_balance" field.
  double? _walletBalance;
  double get walletBalance => _walletBalance ?? 0.0;
  set walletBalance(double? val) => _walletBalance = val;

  void incrementWalletBalance(double amount) =>
      walletBalance = walletBalance + amount;

  bool hasWalletBalance() => _walletBalance != null;

  // "referral_code" field.
  String? _referralCode;
  String get referralCode => _referralCode ?? '';
  set referralCode(String? val) => _referralCode = val;

  bool hasReferralCode() => _referralCode != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        mobile: data['mobile'] as String?,
        walletBalance: castToType<double>(data['wallet_balance']),
        referralCode: data['referral_code'] as String?,
        status: data['status'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'mobile': _mobile,
        'wallet_balance': _walletBalance,
        'referral_code': _referralCode,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'wallet_balance': serializeParam(
          _walletBalance,
          ParamType.double,
        ),
        'referral_code': serializeParam(
          _referralCode,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        walletBalance: deserializeParam(
          data['wallet_balance'],
          ParamType.double,
          false,
        ),
        referralCode: deserializeParam(
          data['referral_code'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        name == other.name &&
        mobile == other.mobile &&
        walletBalance == other.walletBalance &&
        referralCode == other.referralCode &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, mobile, walletBalance, referralCode, status]);
}

UserStruct createUserStruct({
  String? id,
  String? name,
  String? mobile,
  double? walletBalance,
  String? referralCode,
  String? status,
}) =>
    UserStruct(
      id: id,
      name: name,
      mobile: mobile,
      walletBalance: walletBalance,
      referralCode: referralCode,
      status: status,
    );

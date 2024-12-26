import 'package:collection/collection.dart';

enum TransactionType {
  USDT_DEPOSIT,
  USDT_TRANSFER,
  USDT_BUY,
  USDT_SELL,
  CASH_TRANSFER,
  CASH_PICKUP,
  CASH_DROP,
}

enum UserType {
  PARTNER,
  USER,
}

enum Currency {
  INR,
  USDT,
}

enum OtpPurpose {
  LOGIN,
  SIGNUP,
  UPDATE_PIN,
}

enum TransactionStatus {
  PROCESSING,
  COMPLETED,
  FAILED,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TransactionType):
      return TransactionType.values.deserialize(value) as T?;
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (Currency):
      return Currency.values.deserialize(value) as T?;
    case (OtpPurpose):
      return OtpPurpose.values.deserialize(value) as T?;
    case (TransactionStatus):
      return TransactionStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}

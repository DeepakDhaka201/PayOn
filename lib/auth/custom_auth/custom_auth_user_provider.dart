import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class PayOnAuthUser {
  PayOnAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PayOnAuthUser> payOnAuthUserSubject =
    BehaviorSubject.seeded(PayOnAuthUser(loggedIn: false));
Stream<PayOnAuthUser> payOnAuthUserStream() =>
    payOnAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'referral_widget.dart' show ReferralWidget;
import 'package:flutter/material.dart';

class ReferralModel extends FlutterFlowModel<ReferralWidget> {
  ///  Local state fields for this page.

  bool showLoader = true;

  dynamic refInfo;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Referral Info)] action in Referral widget.
  ApiCallResponse? apiResultRefInfo;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}

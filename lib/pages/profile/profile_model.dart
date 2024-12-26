import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool? showLoader = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Profile)] action in profile widget.
  ApiCallResponse? profileResp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

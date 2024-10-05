import '/backend/api_requests/api_calls.dart';
import '/components/logowithname_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logowithname component.
  late LogowithnameModel logowithnameModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? loginResponse;

  @override
  void initState(BuildContext context) {
    logowithnameModel = createModel(context, () => LogowithnameModel());
  }

  @override
  void dispose() {
    logowithnameModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}

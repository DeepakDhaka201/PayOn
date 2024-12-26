import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'withdraw_usdt_widget.dart' show WithdrawUsdtWidget;
import 'package:flutter/material.dart';

class WithdrawUsdtModel extends FlutterFlowModel<WithdrawUsdtWidget> {
  ///  Local state fields for this page.

  double amountUsdt = 0.0;

  double amountInr = 0.0;

  double rate = 0.0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for AmountUsdt widget.
  FocusNode? amountUsdtFocusNode;
  TextEditingController? amountUsdtTextController;
  String? Function(BuildContext, String?)? amountUsdtTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Bottom Sheet - wallet_pin] action in Button widget.
  String? walletPinResp;
  // Stores action output result for [Backend Call - API (Initiate Withdraw)] action in Button widget.
  ApiCallResponse? initiateWdtResp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountUsdtFocusNode?.dispose();
    amountUsdtTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}

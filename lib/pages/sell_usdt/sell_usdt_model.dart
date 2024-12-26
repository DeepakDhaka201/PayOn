import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sell_usdt_widget.dart' show SellUsdtWidget;
import 'package:flutter/material.dart';

class SellUsdtModel extends FlutterFlowModel<SellUsdtWidget> {
  ///  Local state fields for this page.

  dynamic rates;

  bool showLoader = true;

  String payMode = 'Online Bank Transfer';

  double? applicableRate;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Check Rates)] action in SellUsdt widget.
  ApiCallResponse? apiRespCheckRates;
  // State field(s) for AmountInr widget.
  FocusNode? amountInrFocusNode;
  TextEditingController? amountInrTextController;
  String? Function(BuildContext, String?)? amountInrTextControllerValidator;
  // Stores action output result for [Custom Action - convertToUSDTAmount] action in AmountInr widget.
  dynamic convertedResp;
  // State field(s) for AmountUsdt widget.
  FocusNode? amountUsdtFocusNode;
  TextEditingController? amountUsdtTextController;
  String? Function(BuildContext, String?)? amountUsdtTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Custom Action - convertToUSDTAmount] action in RadioButton widget.
  dynamic convertedAmountOnRadio;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountInrFocusNode?.dispose();
    amountInrTextController?.dispose();

    amountUsdtFocusNode?.dispose();
    amountUsdtTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}

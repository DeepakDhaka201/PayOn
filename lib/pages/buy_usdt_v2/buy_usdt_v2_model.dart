import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'buy_usdt_v2_widget.dart' show BuyUsdtV2Widget;
import 'package:flutter/material.dart';

class BuyUsdtV2Model extends FlutterFlowModel<BuyUsdtV2Widget> {
  ///  Local state fields for this page.

  double rate = 0.0;

  bool showLoader = true;

  String payMode = 'Cash Deposit via CDM';

  List<String> allModes = [];
  void addToAllModes(String item) => allModes.add(item);
  void removeFromAllModes(String item) => allModes.remove(item);
  void removeAtIndexFromAllModes(int index) => allModes.removeAt(index);
  void insertAtIndexInAllModes(int index, String item) =>
      allModes.insert(index, item);
  void updateAllModesAtIndex(int index, Function(String) updateFn) =>
      allModes[index] = updateFn(allModes[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Check Rates)] action in BuyUsdtV2 widget.
  ApiCallResponse? apiRespCheckRatesCopy;
  // State field(s) for AmountInr widget.
  FocusNode? amountInrFocusNode;
  TextEditingController? amountInrTextController;
  String? Function(BuildContext, String?)? amountInrTextControllerValidator;
  // Stores action output result for [Custom Action - convertToUSDTAmount] action in AmountInr widget.
  dynamic convertedRespCoppy;
  // State field(s) for AmountUsdt widget.
  FocusNode? amountUsdtFocusNode;
  TextEditingController? amountUsdtTextController;
  String? Function(BuildContext, String?)? amountUsdtTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Custom Action - convertToUSDTAmount] action in RadioButton widget.
  dynamic convertedAmountOnRadioBuy;

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

import '/backend/api_requests/api_calls.dart';
import '/components/timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'buy_claim_options_widget.dart' show BuyClaimOptionsWidget;
import 'package:flutter/material.dart';

class BuyClaimOptionsModel extends FlutterFlowModel<BuyClaimOptionsWidget> {
  ///  Local state fields for this page.

  bool showLoader = true;

  double amountUsdtVar = 0.0;

  double rateVar = 0.0;

  String? bankNameFilter;

  String? sortVar;

  List<dynamic> claimsVar = [];
  void addToClaimsVar(dynamic item) => claimsVar.add(item);
  void removeFromClaimsVar(dynamic item) => claimsVar.remove(item);
  void removeAtIndexFromClaimsVar(int index) => claimsVar.removeAt(index);
  void insertAtIndexInClaimsVar(int index, dynamic item) =>
      claimsVar.insert(index, item);
  void updateClaimsVarAtIndex(int index, Function(dynamic) updateFn) =>
      claimsVar[index] = updateFn(claimsVar[index]);

  List<String> bankNamesVar = [];
  void addToBankNamesVar(String item) => bankNamesVar.add(item);
  void removeFromBankNamesVar(String item) => bankNamesVar.remove(item);
  void removeAtIndexFromBankNamesVar(int index) => bankNamesVar.removeAt(index);
  void insertAtIndexInBankNamesVar(int index, String item) =>
      bankNamesVar.insert(index, item);
  void updateBankNamesVarAtIndex(int index, Function(String) updateFn) =>
      bankNamesVar[index] = updateFn(bankNamesVar[index]);

  List<String> sortOptions = [];
  void addToSortOptions(String item) => sortOptions.add(item);
  void removeFromSortOptions(String item) => sortOptions.remove(item);
  void removeAtIndexFromSortOptions(int index) => sortOptions.removeAt(index);
  void insertAtIndexInSortOptions(int index, String item) =>
      sortOptions.insert(index, item);
  void updateSortOptionsAtIndex(int index, Function(String) updateFn) =>
      sortOptions[index] = updateFn(sortOptions[index]);

  List<String> sortLabels = [];
  void addToSortLabels(String item) => sortLabels.add(item);
  void removeFromSortLabels(String item) => sortLabels.remove(item);
  void removeAtIndexFromSortLabels(int index) => sortLabels.removeAt(index);
  void insertAtIndexInSortLabels(int index, String item) =>
      sortLabels.insert(index, item);
  void updateSortLabelsAtIndex(int index, Function(String) updateFn) =>
      sortLabels[index] = updateFn(sortLabels[index]);

  bool showActiveOptions = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Active Buy Orders With Claims)] action in BuyClaimOptions widget.
  ApiCallResponse? activeBuyOrders;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (Fetch Claims)] action in BuyClaimOptions widget.
  ApiCallResponse? apiRespFetchClaims2;
  // State field(s) for AmountInr widget.
  FocusNode? amountInrFocusNode;
  TextEditingController? amountInrTextController;
  String? Function(BuildContext, String?)? amountInrTextControllerValidator;
  // Stores action output result for [Custom Action - convertToUSDTAmount] action in AmountInr widget.
  dynamic convertedRespCoppy2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Models for Timer dynamic component.
  late FlutterFlowDynamicModels<TimerModel> timerModels;
  // Stores action output result for [Bottom Sheet - Filters] action in Row widget.
  dynamic selectedFilters;
  // Stores action output result for [Backend Call - API (Initiate Buy)] action in Button widget.
  ApiCallResponse? apiInitiateBuyResp;

  @override
  void initState(BuildContext context) {
    timerModels = FlutterFlowDynamicModels(() => TimerModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    amountInrFocusNode?.dispose();
    amountInrTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    timerModels.dispose();
  }
}

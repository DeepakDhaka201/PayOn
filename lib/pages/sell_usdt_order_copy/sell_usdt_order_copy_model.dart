import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sell_usdt_order_copy_widget.dart' show SellUsdtOrderCopyWidget;
import 'package:flutter/material.dart';

class SellUsdtOrderCopyModel extends FlutterFlowModel<SellUsdtOrderCopyWidget> {
  ///  Local state fields for this page.

  List<String> bankAccountIds = [];
  void addToBankAccountIds(String item) => bankAccountIds.add(item);
  void removeFromBankAccountIds(String item) => bankAccountIds.remove(item);
  void removeAtIndexFromBankAccountIds(int index) =>
      bankAccountIds.removeAt(index);
  void insertAtIndexInBankAccountIds(int index, String item) =>
      bankAccountIds.insert(index, item);
  void updateBankAccountIdsAtIndex(int index, Function(String) updateFn) =>
      bankAccountIds[index] = updateFn(bankAccountIds[index]);

  List<String> bankAccountLabels = [];
  void addToBankAccountLabels(String item) => bankAccountLabels.add(item);
  void removeFromBankAccountLabels(String item) =>
      bankAccountLabels.remove(item);
  void removeAtIndexFromBankAccountLabels(int index) =>
      bankAccountLabels.removeAt(index);
  void insertAtIndexInBankAccountLabels(int index, String item) =>
      bankAccountLabels.insert(index, item);
  void updateBankAccountLabelsAtIndex(int index, Function(String) updateFn) =>
      bankAccountLabels[index] = updateFn(bankAccountLabels[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Bank Accounts)] action in SellUsdtOrderCopy widget.
  ApiCallResponse? bankAccounts;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in Text widget.
  bool? saveDialogResp;
  // Stores action output result for [Backend Call - API (Get Bank Accounts)] action in Text widget.
  ApiCallResponse? bankAccountsCopy;
  // Stores action output result for [Backend Call - API (Initiate Sell)] action in Button widget.
  ApiCallResponse? sellInitiateResp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

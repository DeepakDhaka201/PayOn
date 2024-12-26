import '/backend/api_requests/api_calls.dart';
import '/components/rates_widget.dart';
import '/components/timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  List<dynamic> activeTxnVarList = [];
  void addToActiveTxnVarList(dynamic item) => activeTxnVarList.add(item);
  void removeFromActiveTxnVarList(dynamic item) =>
      activeTxnVarList.remove(item);
  void removeAtIndexFromActiveTxnVarList(int index) =>
      activeTxnVarList.removeAt(index);
  void insertAtIndexInActiveTxnVarList(int index, dynamic item) =>
      activeTxnVarList.insert(index, item);
  void updateActiveTxnVarListAtIndex(int index, Function(dynamic) updateFn) =>
      activeTxnVarList[index] = updateFn(activeTxnVarList[index]);

  bool showLoader = true;

  dynamic rates;

  double walletUsdt = 0.0;

  bool showPendingAction = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Dashboard vtwo)] action in Dashboard widget.
  ApiCallResponse? allRatesResp;
  // Models for Timer dynamic component.
  late FlutterFlowDynamicModels<TimerModel> timerModels;
  // Model for Rates component.
  late RatesModel ratesModel;

  @override
  void initState(BuildContext context) {
    timerModels = FlutterFlowDynamicModels(() => TimerModel());
    ratesModel = createModel(context, () => RatesModel());
  }

  @override
  void dispose() {
    timerModels.dispose();
    ratesModel.dispose();
  }
}

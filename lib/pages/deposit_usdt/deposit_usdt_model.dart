import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'deposit_usdt_widget.dart' show DepositUsdtWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class DepositUsdtModel extends FlutterFlowModel<DepositUsdtWidget> {
  ///  Local state fields for this page.

  bool showLoader = true;

  dynamic getAddressResp;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Deposit Address)] action in DepositUsdt widget.
  ApiCallResponse? apiGetAdrResp;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (Check Deposit)] action in Button widget.
  ApiCallResponse? depositStatus;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}

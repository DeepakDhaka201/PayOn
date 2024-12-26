import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'buy_usdt_verify_widget.dart' show BuyUsdtVerifyWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class BuyUsdtVerifyModel extends FlutterFlowModel<BuyUsdtVerifyWidget> {
  ///  Local state fields for this page.

  String? purl;

  ///  State fields for stateful widgets in this page.

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

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Cancel Buy Transaction)] action in Button widget.
  ApiCallResponse? apiResultBuyCancel;
  // Stores action output result for [Backend Call - API (Verify Buy)] action in Button widget.
  ApiCallResponse? confirmBuyApiResp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

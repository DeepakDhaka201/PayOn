import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_pin_widget.dart' show WalletPinWidget;
import 'package:flutter/material.dart';

class WalletPinModel extends FlutterFlowModel<WalletPinWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for walletPinText widget.
  FocusNode? walletPinTextFocusNode;
  TextEditingController? walletPinTextTextController;
  late bool walletPinTextVisibility;
  String? Function(BuildContext, String?)? walletPinTextTextControllerValidator;

  @override
  void initState(BuildContext context) {
    walletPinTextVisibility = false;
  }

  @override
  void dispose() {
    walletPinTextFocusNode?.dispose();
    walletPinTextTextController?.dispose();
  }
}

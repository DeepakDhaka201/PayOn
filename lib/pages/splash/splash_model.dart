import '/components/logowithname_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'splash_widget.dart' show SplashWidget;
import 'package:flutter/material.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for logowithname component.
  late LogowithnameModel logowithnameModel;

  @override
  void initState(BuildContext context) {
    logowithnameModel = createModel(context, () => LogowithnameModel());
  }

  @override
  void dispose() {
    logowithnameModel.dispose();
  }
}

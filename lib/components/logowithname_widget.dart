import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logowithname_model.dart';
export 'logowithname_model.dart';

class LogowithnameWidget extends StatefulWidget {
  const LogowithnameWidget({super.key});

  @override
  State<LogowithnameWidget> createState() => _LogowithnameWidgetState();
}

class _LogowithnameWidgetState extends State<LogowithnameWidget> {
  late LogowithnameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogowithnameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 179.0,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Image_37_(1).png',
                width: 86.0,
                height: 113.0,
                fit: BoxFit.fill,
                alignment: const Alignment(0.0, -1.0),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Text(
                  'PayOn\n',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Archivo',
                        color: Colors.white,
                        fontSize: 36.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

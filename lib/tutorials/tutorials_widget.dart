import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tutorials_model.dart';
export 'tutorials_model.dart';

class TutorialsWidget extends StatefulWidget {
  const TutorialsWidget({
    super.key,
    required this.domain,
  });

  final String? domain;

  @override
  State<TutorialsWidget> createState() => _TutorialsWidgetState();
}

class _TutorialsWidgetState extends State<TutorialsWidget> {
  late TutorialsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).netrual700,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Tutorials',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).netrual700,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.5,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      '${widget.domain}/static/images/1.jpg',
                      width: 370.0,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${widget.domain}/static/images/2.jpg',
                    width: 370.0,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${widget.domain}/static/images/3.jpg',
                    width: 370.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${widget.domain}/static/images/4.jpg',
                    width: 370.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${widget.domain}/static/images/5.jpg',
                    width: 370.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    '${widget.domain}/static/images/6.jpg',
                    width: 370.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      '${widget.domain}/static/images/7.jpg',
                      width: 370.0,
                      height: MediaQuery.sizeOf(context).height * 0.8,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

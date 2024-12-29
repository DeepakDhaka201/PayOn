import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bank_item_model.dart';
export 'bank_item_model.dart';

class BankItemWidget extends StatefulWidget {
  const BankItemWidget({
    super.key,
    required this.bankItem,
  });

  final dynamic bankItem;

  @override
  State<BankItemWidget> createState() => _BankItemWidgetState();
}

class _BankItemWidgetState extends State<BankItemWidget> {
  late BankItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankItemModel());

    _model.switchValue = getJsonField(
      widget.bankItem,
      r'''$.is_active''',
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Container(
        height: 109.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getJsonField(
                      widget.bankItem,
                      r'''$.bank_name''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    getJsonField(
                      widget.bankItem,
                      r'''$.account_holder''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Archivo',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account Number',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            getJsonField(
                              widget.bankItem,
                              r'''$.account_number''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ].divide(const SizedBox(width: 16.0)),
                  ),
                ].divide(const SizedBox(height: 4.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Switch(
                    value: _model.switchValue!,
                    onChanged: (newValue) async {
                      safeSetState(() => _model.switchValue = newValue);
                    },
                    activeColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    activeTrackColor: FlutterFlowTheme.of(context).primary,
                    inactiveTrackColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'IFSC Code',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).tertiary,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Text(
                        getJsonField(
                          widget.bankItem,
                          r'''$.ifsc_code''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

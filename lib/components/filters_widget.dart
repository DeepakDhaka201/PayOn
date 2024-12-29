import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'filters_model.dart';
export 'filters_model.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({
    super.key,
    required this.sortOptions,
    required this.sortNames,
    required this.bankNames,
  });

  final List<String>? sortOptions;
  final List<String>? sortNames;
  final List<String>? bankNames;

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late FiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sort & Filter',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Archivo',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sort By',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Archivo',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FlutterFlowChoiceChips(
                    options: widget.sortOptions!
                        .map((label) => ChipData(label))
                        .toList(),
                    onChanged: (val) async {
                      safeSetState(
                          () => _model.choiceChipsValue1 = val?.firstOrNull);
                      _model.data = <String, String?>{
                        'sort_by': _model.choiceChipsValue1,
                        'filter_bank': _model.choiceChipsValue2,
                      };
                      safeSetState(() {});
                    },
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodySmall
                          .override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 1.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue1 != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController1 ??=
                        FormFieldController<List<String>>(
                      [widget.sortOptions!.firstOrNull!],
                    ),
                    wrapped: true,
                  ),
                  Text(
                    'Filter by Bank',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Archivo',
                          letterSpacing: 0.0,
                        ),
                  ),
                  FlutterFlowChoiceChips(
                    options: widget.bankNames!
                        .map((label) => ChipData(label))
                        .toList(),
                    onChanged: (val) async {
                      safeSetState(
                          () => _model.choiceChipsValue2 = val?.firstOrNull);
                      _model.data = <String, String?>{
                        'sort_by': _model.choiceChipsValue1,
                        'filter_bank': _model.choiceChipsValue2,
                      };
                      safeSetState(() {});
                    },
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodySmall
                          .override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 1.0,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue2 != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController2 ??=
                        FormFieldController<List<String>>(
                      [widget.bankNames!.firstOrNull!],
                    ),
                    wrapped: true,
                  ),
                ].divide(const SizedBox(height: 16.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context, _model.data);
                  },
                  text: 'Apply Filters',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Archivo',
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                        ),
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}

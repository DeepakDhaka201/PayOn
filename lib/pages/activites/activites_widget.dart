import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'activites_model.dart';
export 'activites_model.dart';

class ActivitesWidget extends StatefulWidget {
  const ActivitesWidget({super.key});

  @override
  State<ActivitesWidget> createState() => _ActivitesWidgetState();
}

class _ActivitesWidgetState extends State<ActivitesWidget>
    with TickerProviderStateMixin {
  late ActivitesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitesModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).netural100,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).netrual900,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Activites',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Archivo',
                  color: FlutterFlowTheme.of(context).netrual900,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 573.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 5.0, 0.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: const Alignment(0.0, 0),
                                child: FlutterFlowButtonTabBar(
                                  useToggleButtonStyle: false,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Archivo',
                                        fontSize: 15.0,
                                        letterSpacing: 0.0,
                                      ),
                                  unselectedLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Archivo',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                  labelColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context).netrual700,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primary500,
                                  unselectedBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).netrual400,
                                  unselectedBorderColor:
                                      FlutterFlowTheme.of(context).netrual400,
                                  borderWidth: 1.0,
                                  borderRadius: 12.0,
                                  elevation: 0.0,
                                  buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 4.0, 0.0),
                                  tabs: const [
                                    Tab(
                                      text: 'Deposit',
                                    ),
                                    Tab(
                                      text: 'Transfer',
                                    ),
                                    Tab(
                                      text: 'Buy',
                                    ),
                                    Tab(
                                      text: 'Sell',
                                    ),
                                    Tab(
                                      text: 'Cash',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 10.0, 15.0, 0.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 76.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .netrual400,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 1.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .netrual900,
                                                        borderRadius: 50.0,
                                                        buttonSize: 30.0,
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        icon: Icon(
                                                          Icons.south_east,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .netrual900,
                                                          size: 15.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'USDT Deposit',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .netrual900,
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            'PO345334221 • 21/11/23',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .netrual500,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    10.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text(
                                                              '+₮300.00',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success600,
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Success',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success500,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 76.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .netrual400,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .netrual900,
                                                      borderRadius: 50.0,
                                                      buttonSize: 30.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        Icons.north_west,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .netrual900,
                                                        size: 15.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'USDT Sell',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .netrual900,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Text(
                                                          'PO345334221 • 21/11/23',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .netrual500,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '-₮300.00',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .danger600,
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Processing',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning500,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 76.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .netrual400,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .netrual900,
                                                      borderRadius: 50.0,
                                                      buttonSize: 30.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        Icons
                                                            .swap_calls_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .netrual900,
                                                        size: 15.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Cash Transfer',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .netrual900,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Text(
                                                          'PO345334221 • 21/11/23',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .netrual500,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '₹250000.00',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .color5600,
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Success',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success500,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                    const Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

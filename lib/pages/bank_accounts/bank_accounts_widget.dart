import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/account_save_widget.dart';
import '/components/bank_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'bank_accounts_model.dart';
export 'bank_accounts_model.dart';

class BankAccountsWidget extends StatefulWidget {
  const BankAccountsWidget({super.key});

  @override
  State<BankAccountsWidget> createState() => _BankAccountsWidgetState();
}

class _BankAccountsWidgetState extends State<BankAccountsWidget> {
  late BankAccountsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BankAccountsModel());

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
            'Bank Accounts',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).netrual900,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.9,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(LoggedInGroup.getBankAccountsCall.call(
                                apiToken: currentAuthenticationToken,
                              )))
                        .future,
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Image.asset(
                          'assets/images/Spinner@1x-1.0s-200px-200px.gif',
                          width: 100.0,
                          height: 100.0,
                        );
                      }
                      final listViewGetBankAccountsResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final bankAccounts = getJsonField(
                            listViewGetBankAccountsResponse.jsonBody,
                            r'''$.accounts''',
                          ).toList();

                          return RefreshIndicator(
                            onRefresh: () async {
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: bankAccounts.length,
                              itemBuilder: (context, bankAccountsIndex) {
                                final bankAccountsItem =
                                    bankAccounts[bankAccountsIndex];
                                return BankItemWidget(
                                  key: Key(
                                      'Keytjk_${bankAccountsIndex}_of_${bankAccounts.length}'),
                                  bankItem: bankAccountsItem,
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var shouldSetState = false;
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 1.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(dialogContext).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: const AccountSaveWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(
                            () => _model.saveDialogRespCopy = value));

                        shouldSetState = true;
                        if (_model.saveDialogRespCopy!) {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed('BankAccounts');

                          if (shouldSetState) safeSetState(() {});
                          return;
                        } else {
                          if (shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (shouldSetState) safeSetState(() {});
                      },
                      text: 'Add Account',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Archivo',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
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

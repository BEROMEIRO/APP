import '/auth/base_auth_user_provider.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'reabertura_model.dart';
export 'reabertura_model.dart';

class ReaberturaWidget extends StatefulWidget {
  const ReaberturaWidget({
    super.key,
    this.osNumber,
    this.project,
    this.oco,
    this.type,
    this.description,
  });

  final String? osNumber;
  final String? project;
  final String? oco;
  final String? type;
  final String? description;

  @override
  State<ReaberturaWidget> createState() => _ReaberturaWidgetState();
}

class _ReaberturaWidgetState extends State<ReaberturaWidget> {
  late ReaberturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReaberturaModel());

    _model.textFieldOSTextController ??=
        TextEditingController(text: widget.osNumber);
    _model.textFieldOSFocusNode ??= FocusNode();

    _model.textFieldDescricaoTextController ??=
        TextEditingController(text: widget.description);
    _model.textFieldDescricaoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF3976EF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('Home');
            },
          ),
          title: Text(
            'Novo Chamado',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Salvar',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF3976EF),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.textFieldOSTextController,
                            focusNode: _model.textFieldOSFocusNode,
                            onFieldSubmitted: (_) async {
                              await TbProjetoFedexTable().insert({
                                'dt_abertura': supaSerialize<DateTime>(
                                    getCurrentTimestamp),
                                'os': _model.textFieldOSTextController.text,
                                'nome_tecnico': loggedIn.toString(),
                                'telefone_tecnico': '',
                                'ocorrencia': _model.dropDOcorrenciaValue,
                                'unidade': '',
                                'tipo': _model.dropDTipoValue,
                              });
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Número da OS',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.textFieldOSTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            50.0, 8.0, 50.0, 8.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: APIProjetoCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            final dropDProjetoAPIProjetoResponse =
                                snapshot.data!;

                            return FlutterFlowDropDown<String>(
                              controller: _model.dropDProjetoValueController ??=
                                  FormFieldController<String>(
                                _model.dropDProjetoValue ??=
                                    FFAppState().Projeto,
                              ),
                              options: APIProjetoCall.name(
                                dropDProjetoAPIProjetoResponse.jsonBody,
                              )!,
                              onChanged: (val) async {
                                setState(() => _model.dropDProjetoValue = val);
                                var shouldSetState = false;
                                _model.apiProjetoResp =
                                    await APIProjetoCall.call();

                                shouldSetState = true;
                                if ((_model.apiProjetoResp?.succeeded ??
                                    true)) {
                                  await Future.delayed(
                                      const Duration(milliseconds: 50));
                                  FFAppState().isFirstDropdownSelected = true;
                                  setState(() {});
                                } else {
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                if (shouldSetState) setState(() {});
                              },
                              width: 300.0,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Projeto',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isOverButton: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          },
                        ),
                      ),
                      if ((_model.dropDProjetoValue != null &&
                              _model.dropDProjetoValue != '') &&
                          (widget.project != null && widget.project != ''))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50.0, 8.0, 50.0, 8.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: APIOcorrenciaCall.call(
                              name: _model.dropDProjetoValue,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final dropDOcorrenciaAPIOcorrenciaResponse =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.dropDOcorrenciaValueController ??=
                                        FormFieldController<String>(
                                  _model.dropDOcorrenciaValue ??=
                                      FFAppState().Ocorrencia,
                                ),
                                options: (getJsonField(
                                  dropDOcorrenciaAPIOcorrenciaResponse.jsonBody,
                                  r'''$[:].motivo''',
                                  true,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList(),
                                onChanged: (val) async {
                                  setState(
                                      () => _model.dropDOcorrenciaValue = val);
                                  FFAppState().isSecondDropdownSelected = true;
                                  setState(() {});
                                },
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Ocorrência',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                      if ((_model.dropDProjetoValue != null &&
                              _model.dropDProjetoValue != '') &&
                          (widget.project != null && widget.project != ''))
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              50.0, 8.0, 50.0, 8.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: APITiposPedidosCall.call(
                              projeto: _model.dropDProjetoValue,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final dropDTipoAPITiposPedidosResponse =
                                  snapshot.data!;

                              return FlutterFlowDropDown<String>(
                                controller: _model.dropDTipoValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDTipoValue ??= FFAppState().Tipo,
                                ),
                                options: (getJsonField(
                                  dropDTipoAPITiposPedidosResponse.jsonBody,
                                  r'''$[:].tipo''',
                                  true,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList(),
                                onChanged: (val) async {
                                  setState(() => _model.dropDTipoValue = val);
                                  var shouldSetState = false;
                                  if ((_model.dropDProjetoValue == null ||
                                              _model.dropDProjetoValue == '') &&
                                          (_model.dropDProjetoValue != null &&
                                              _model.dropDProjetoValue != '')
                                      ? true
                                      : false) {
                                    _model.apiResult7gb =
                                        await APIProjetoCall.call();

                                    shouldSetState = true;
                                  } else {
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (shouldSetState) setState(() {});
                                },
                                width: 300.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Tipo',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2.0,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: TextFormField(
                                controller:
                                    _model.textFieldDescricaoTextController,
                                focusNode: _model.textFieldDescricaoFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Descrição',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                validator: _model
                                    .textFieldDescricaoTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  Container(
                    height: 94.0,
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 15.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: const Color(0xFF4898F8),
                              icon: Icon(
                                Icons.camera_alt_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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

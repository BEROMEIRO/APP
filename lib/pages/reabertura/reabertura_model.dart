import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reabertura_widget.dart' show ReaberturaWidget;
import 'package:flutter/material.dart';

class ReaberturaModel extends FlutterFlowModel<ReaberturaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldOS widget.
  FocusNode? textFieldOSFocusNode;
  TextEditingController? textFieldOSTextController;
  String? Function(BuildContext, String?)? textFieldOSTextControllerValidator;
  // State field(s) for DropDProjeto widget.
  String? dropDProjetoValue;
  FormFieldController<String>? dropDProjetoValueController;
  // Stores action output result for [Backend Call - API (APIProjeto)] action in DropDProjeto widget.
  ApiCallResponse? apiProjetoResp;
  // State field(s) for DropDOcorrencia widget.
  String? dropDOcorrenciaValue;
  FormFieldController<String>? dropDOcorrenciaValueController;
  // State field(s) for DropDTipo widget.
  String? dropDTipoValue;
  FormFieldController<String>? dropDTipoValueController;
  // Stores action output result for [Backend Call - API (APIProjeto)] action in DropDTipo widget.
  ApiCallResponse? apiResult7gb;
  // State field(s) for TextFieldDescricao widget.
  FocusNode? textFieldDescricaoFocusNode;
  TextEditingController? textFieldDescricaoTextController;
  String? Function(BuildContext, String?)?
      textFieldDescricaoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldOSFocusNode?.dispose();
    textFieldOSTextController?.dispose();

    textFieldDescricaoFocusNode?.dispose();
    textFieldDescricaoTextController?.dispose();
  }
}

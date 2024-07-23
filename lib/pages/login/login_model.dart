import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Telefone_txt_field widget.
  FocusNode? telefoneTxtFieldFocusNode;
  TextEditingController? telefoneTxtFieldTextController;
  String? Function(BuildContext, String?)?
      telefoneTxtFieldTextControllerValidator;
  // State field(s) for Nome_txt_field widget.
  FocusNode? nomeTxtFieldFocusNode;
  TextEditingController? nomeTxtFieldTextController;
  String? Function(BuildContext, String?)? nomeTxtFieldTextControllerValidator;
  // State field(s) for email_txtfield widget.
  FocusNode? emailTxtfieldFocusNode;
  TextEditingController? emailTxtfieldTextController;
  String? Function(BuildContext, String?)? emailTxtfieldTextControllerValidator;
  // State field(s) for CPF_txt_field widget.
  FocusNode? cPFTxtFieldFocusNode;
  TextEditingController? cPFTxtFieldTextController;
  String? Function(BuildContext, String?)? cPFTxtFieldTextControllerValidator;
  // State field(s) for Unidade_txt_field widget.
  FocusNode? unidadeTxtFieldFocusNode;
  TextEditingController? unidadeTxtFieldTextController;
  String? Function(BuildContext, String?)?
      unidadeTxtFieldTextControllerValidator;
  // State field(s) for Codigo_txt_field widget.
  FocusNode? codigoTxtFieldFocusNode;
  TextEditingController? codigoTxtFieldTextController;
  late bool codigoTxtFieldVisibility;
  String? Function(BuildContext, String?)?
      codigoTxtFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    codigoTxtFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    telefoneTxtFieldFocusNode?.dispose();
    telefoneTxtFieldTextController?.dispose();

    nomeTxtFieldFocusNode?.dispose();
    nomeTxtFieldTextController?.dispose();

    emailTxtfieldFocusNode?.dispose();
    emailTxtfieldTextController?.dispose();

    cPFTxtFieldFocusNode?.dispose();
    cPFTxtFieldTextController?.dispose();

    unidadeTxtFieldFocusNode?.dispose();
    unidadeTxtFieldTextController?.dispose();

    codigoTxtFieldFocusNode?.dispose();
    codigoTxtFieldTextController?.dispose();
  }
}

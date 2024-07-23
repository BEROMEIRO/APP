import '/flutter_flow/flutter_flow_util.dart';
import 'os_widget.dart' show OsWidget;
import 'package:flutter/material.dart';

class OsModel extends FlutterFlowModel<OsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

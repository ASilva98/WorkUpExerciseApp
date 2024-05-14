import '/flutter_flow/flutter_flow_util.dart';
import 'routines_page_widget.dart' show RoutinesPageWidget;
import 'package:flutter/material.dart';

class RoutinesPageModel extends FlutterFlowModel<RoutinesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

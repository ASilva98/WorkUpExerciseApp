import '/flutter_flow/flutter_flow_util.dart';
import 'exercies_page_widget.dart' show ExerciesPageWidget;
import 'package:flutter/material.dart';

class ExerciesPageModel extends FlutterFlowModel<ExerciesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

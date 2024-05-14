import '/flutter_flow/flutter_flow_util.dart';
import 'learning_page_widget.dart' show LearningPageWidget;
import 'package:flutter/material.dart';

class LearningPageModel extends FlutterFlowModel<LearningPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

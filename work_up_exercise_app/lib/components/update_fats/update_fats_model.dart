import '/flutter_flow/flutter_flow_util.dart';
import 'update_fats_widget.dart' show UpdateFatsWidget;
import 'package:flutter/material.dart';

class UpdateFatsModel extends FlutterFlowModel<UpdateFatsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode;
  TextEditingController? weightInputTextController;
  String? Function(BuildContext, String?)? weightInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    weightInputFocusNode?.dispose();
    weightInputTextController?.dispose();
  }
}

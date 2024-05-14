import '/flutter_flow/flutter_flow_util.dart';
import 'update_age_widget.dart' show UpdateAgeWidget;
import 'package:flutter/material.dart';

class UpdateAgeModel extends FlutterFlowModel<UpdateAgeWidget> {
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

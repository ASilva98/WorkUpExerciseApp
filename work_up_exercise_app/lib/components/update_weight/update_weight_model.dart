import '/flutter_flow/flutter_flow_util.dart';
import 'update_weight_widget.dart' show UpdateWeightWidget;
import 'package:flutter/material.dart';

class UpdateWeightModel extends FlutterFlowModel<UpdateWeightWidget> {
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

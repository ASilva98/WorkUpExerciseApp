import '/flutter_flow/flutter_flow_util.dart';
import 'update_protein_widget.dart' show UpdateProteinWidget;
import 'package:flutter/material.dart';

class UpdateProteinModel extends FlutterFlowModel<UpdateProteinWidget> {
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

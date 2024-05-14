import '/flutter_flow/flutter_flow_util.dart';
import 'update_height_widget.dart' show UpdateHeightWidget;
import 'package:flutter/material.dart';

class UpdateHeightModel extends FlutterFlowModel<UpdateHeightWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode1;
  TextEditingController? weightInputTextController1;
  String? Function(BuildContext, String?)? weightInputTextController1Validator;
  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode2;
  TextEditingController? weightInputTextController2;
  String? Function(BuildContext, String?)? weightInputTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    weightInputFocusNode1?.dispose();
    weightInputTextController1?.dispose();

    weightInputFocusNode2?.dispose();
    weightInputTextController2?.dispose();
  }
}

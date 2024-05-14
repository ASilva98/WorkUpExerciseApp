import '/flutter_flow/flutter_flow_util.dart';
import 'update_macros_widget.dart' show UpdateMacrosWidget;
import 'package:flutter/material.dart';

class UpdateMacrosModel extends FlutterFlowModel<UpdateMacrosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode1;
  TextEditingController? weightInputTextController1;
  String? Function(BuildContext, String?)? weightInputTextController1Validator;
  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode2;
  TextEditingController? weightInputTextController2;
  String? Function(BuildContext, String?)? weightInputTextController2Validator;
  // State field(s) for weightInput widget.
  FocusNode? weightInputFocusNode3;
  TextEditingController? weightInputTextController3;
  String? Function(BuildContext, String?)? weightInputTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    weightInputFocusNode1?.dispose();
    weightInputTextController1?.dispose();

    weightInputFocusNode2?.dispose();
    weightInputTextController2?.dispose();

    weightInputFocusNode3?.dispose();
    weightInputTextController3?.dispose();
  }
}

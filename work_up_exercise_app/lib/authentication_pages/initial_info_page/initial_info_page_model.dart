import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'initial_info_page_widget.dart' show InitialInfoPageWidget;
import 'package:flutter/material.dart';

class InitialInfoPageModel extends FlutterFlowModel<InitialInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your first name.';
    }

    return null;
  }

  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  String? _ageTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your age.';
    }

    return null;
  }

  // State field(s) for Weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  String? _weightTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your weight.';
    }

    return null;
  }

  // State field(s) for Height_Feet widget.
  int? heightFeetValue;
  FormFieldController<int>? heightFeetValueController;
  // State field(s) for Height_Inches widget.
  int? heightInchesValue;
  FormFieldController<int>? heightInchesValueController;
  // State field(s) for Gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    ageTextControllerValidator = _ageTextControllerValidator;
    weightTextControllerValidator = _weightTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    weightFocusNode?.dispose();
    weightTextController?.dispose();
  }
}

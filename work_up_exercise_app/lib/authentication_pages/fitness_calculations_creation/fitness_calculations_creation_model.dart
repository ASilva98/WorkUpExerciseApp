import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'fitness_calculations_creation_widget.dart'
    show FitnessCalculationsCreationWidget;
import 'package:flutter/material.dart';

class FitnessCalculationsCreationModel
    extends FlutterFlowModel<FitnessCalculationsCreationWidget> {
  ///  Local state fields for this page.

  double? heightInches;

  double? heightFeet;

  double? heightTotal = 0.0;

  double? weight = 0.0;

  double? bmr;

  double? sex;

  double? sexWeight;

  double? sexHeight;

  double? sexAge;

  double? tdee;

  double? lifestyle;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

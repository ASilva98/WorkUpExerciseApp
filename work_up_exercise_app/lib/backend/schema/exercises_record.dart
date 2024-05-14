import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ExercisesRecord extends FirestoreRecord {
  ExercisesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "first_letter" field.
  String? _firstLetter;
  String get firstLetter => _firstLetter ?? '';
  bool hasFirstLetter() => _firstLetter != null;

  // "equipment" field.
  String? _equipment;
  String get equipment => _equipment ?? '';
  bool hasEquipment() => _equipment != null;

  // "primary_muscle_group" field.
  String? _primaryMuscleGroup;
  String get primaryMuscleGroup => _primaryMuscleGroup ?? '';
  bool hasPrimaryMuscleGroup() => _primaryMuscleGroup != null;

  // "secondary_muscle_group" field.
  String? _secondaryMuscleGroup;
  String get secondaryMuscleGroup => _secondaryMuscleGroup ?? '';
  bool hasSecondaryMuscleGroup() => _secondaryMuscleGroup != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  bool hasInstructions() => _instructions != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _difficulty = snapshotData['difficulty'] as String?;
    _firstLetter = snapshotData['first_letter'] as String?;
    _equipment = snapshotData['equipment'] as String?;
    _primaryMuscleGroup = snapshotData['primary_muscle_group'] as String?;
    _secondaryMuscleGroup = snapshotData['secondary_muscle_group'] as String?;
    _type = snapshotData['type'] as String?;
    _instructions = snapshotData['instructions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exercises');

  static Stream<ExercisesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExercisesRecord.fromSnapshot(s));

  static Future<ExercisesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExercisesRecord.fromSnapshot(s));

  static ExercisesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExercisesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExercisesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExercisesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExercisesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExercisesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExercisesRecordData({
  String? name,
  String? difficulty,
  String? firstLetter,
  String? equipment,
  String? primaryMuscleGroup,
  String? secondaryMuscleGroup,
  String? type,
  String? instructions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'difficulty': difficulty,
      'first_letter': firstLetter,
      'equipment': equipment,
      'primary_muscle_group': primaryMuscleGroup,
      'secondary_muscle_group': secondaryMuscleGroup,
      'type': type,
      'instructions': instructions,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExercisesRecordDocumentEquality implements Equality<ExercisesRecord> {
  const ExercisesRecordDocumentEquality();

  @override
  bool equals(ExercisesRecord? e1, ExercisesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.difficulty == e2?.difficulty &&
        e1?.firstLetter == e2?.firstLetter &&
        e1?.equipment == e2?.equipment &&
        e1?.primaryMuscleGroup == e2?.primaryMuscleGroup &&
        e1?.secondaryMuscleGroup == e2?.secondaryMuscleGroup &&
        e1?.type == e2?.type &&
        e1?.instructions == e2?.instructions;
  }

  @override
  int hash(ExercisesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.difficulty,
        e?.firstLetter,
        e?.equipment,
        e?.primaryMuscleGroup,
        e?.secondaryMuscleGroup,
        e?.type,
        e?.instructions
      ]);

  @override
  bool isValidKey(Object? o) => o is ExercisesRecord;
}

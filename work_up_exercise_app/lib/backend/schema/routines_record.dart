import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RoutinesRecord extends FirestoreRecord {
  RoutinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "exerciseRefs" field.
  List<DocumentReference>? _exerciseRefs;
  List<DocumentReference> get exerciseRefs => _exerciseRefs ?? const [];
  bool hasExerciseRefs() => _exerciseRefs != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _exerciseRefs = getDataList(snapshotData['exerciseRefs']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routines');

  static Stream<RoutinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutinesRecord.fromSnapshot(s));

  static Future<RoutinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutinesRecord.fromSnapshot(s));

  static RoutinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoutinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutinesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutinesRecordDocumentEquality implements Equality<RoutinesRecord> {
  const RoutinesRecordDocumentEquality();

  @override
  bool equals(RoutinesRecord? e1, RoutinesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.exerciseRefs, e2?.exerciseRefs);
  }

  @override
  int hash(RoutinesRecord? e) =>
      const ListEquality().hash([e?.name, e?.exerciseRefs]);

  @override
  bool isValidKey(Object? o) => o is RoutinesRecord;
}

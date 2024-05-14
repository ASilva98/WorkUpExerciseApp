import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "height_feet" field.
  int? _heightFeet;
  int get heightFeet => _heightFeet ?? 0;
  bool hasHeightFeet() => _heightFeet != null;

  // "height_inches" field.
  int? _heightInches;
  int get heightInches => _heightInches ?? 0;
  bool hasHeightInches() => _heightInches != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "date" field.
  List<DateTime>? _date;
  List<DateTime> get date => _date ?? const [];
  bool hasDate() => _date != null;

  // "weight" field.
  List<double>? _weight;
  List<double> get weight => _weight ?? const [];
  bool hasWeight() => _weight != null;

  // "carbs" field.
  int? _carbs;
  int get carbs => _carbs ?? 0;
  bool hasCarbs() => _carbs != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  bool hasProtein() => _protein != null;

  // "fats" field.
  int? _fats;
  int get fats => _fats ?? 0;
  bool hasFats() => _fats != null;

  // "height_cm" field.
  double? _heightCm;
  double get heightCm => _heightCm ?? 0.0;
  bool hasHeightCm() => _heightCm != null;

  // "weight_kg" field.
  double? _weightKg;
  double get weightKg => _weightKg ?? 0.0;
  bool hasWeightKg() => _weightKg != null;

  // "tdee" field.
  double? _tdee;
  double get tdee => _tdee ?? 0.0;
  bool hasTdee() => _tdee != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _heightFeet = castToType<int>(snapshotData['height_feet']);
    _heightInches = castToType<int>(snapshotData['height_inches']);
    _firstName = snapshotData['first_name'] as String?;
    _gender = snapshotData['gender'] as String?;
    _date = getDataList(snapshotData['date']);
    _weight = getDataList(snapshotData['weight']);
    _carbs = castToType<int>(snapshotData['carbs']);
    _protein = castToType<int>(snapshotData['protein']);
    _fats = castToType<int>(snapshotData['fats']);
    _heightCm = castToType<double>(snapshotData['height_cm']);
    _weightKg = castToType<double>(snapshotData['weight_kg']);
    _tdee = castToType<double>(snapshotData['tdee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? uid,
  String? displayName,
  DateTime? createdTime,
  String? photoUrl,
  String? phoneNumber,
  int? age,
  int? heightFeet,
  int? heightInches,
  String? firstName,
  String? gender,
  int? carbs,
  int? protein,
  int? fats,
  double? heightCm,
  double? weightKg,
  double? tdee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'display_name': displayName,
      'created_time': createdTime,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'age': age,
      'height_feet': heightFeet,
      'height_inches': heightInches,
      'first_name': firstName,
      'gender': gender,
      'carbs': carbs,
      'protein': protein,
      'fats': fats,
      'height_cm': heightCm,
      'weight_kg': weightKg,
      'tdee': tdee,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.heightFeet == e2?.heightFeet &&
        e1?.heightInches == e2?.heightInches &&
        e1?.firstName == e2?.firstName &&
        e1?.gender == e2?.gender &&
        listEquality.equals(e1?.date, e2?.date) &&
        listEquality.equals(e1?.weight, e2?.weight) &&
        e1?.carbs == e2?.carbs &&
        e1?.protein == e2?.protein &&
        e1?.fats == e2?.fats &&
        e1?.heightCm == e2?.heightCm &&
        e1?.weightKg == e2?.weightKg &&
        e1?.tdee == e2?.tdee;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.displayName,
        e?.createdTime,
        e?.photoUrl,
        e?.phoneNumber,
        e?.age,
        e?.heightFeet,
        e?.heightInches,
        e?.firstName,
        e?.gender,
        e?.date,
        e?.weight,
        e?.carbs,
        e?.protein,
        e?.fats,
        e?.heightCm,
        e?.weightKg,
        e?.tdee
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

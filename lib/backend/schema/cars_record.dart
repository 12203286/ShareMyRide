import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarsRecord extends FirestoreRecord {
  CarsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fuel" field.
  String? _fuel;
  String get fuel => _fuel ?? '';
  bool hasFuel() => _fuel != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "speed" field.
  String? _speed;
  String get speed => _speed ?? '';
  bool hasSpeed() => _speed != null;

  // "transmission" field.
  String? _transmission;
  String get transmission => _transmission ?? '';
  bool hasTransmission() => _transmission != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _fuel = snapshotData['fuel'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _name = snapshotData['name'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _speed = snapshotData['speed'] as String?;
    _transmission = snapshotData['transmission'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cars');

  static Stream<CarsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarsRecord.fromSnapshot(s));

  static Future<CarsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarsRecord.fromSnapshot(s));

  static CarsRecord fromSnapshot(DocumentSnapshot snapshot) => CarsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarsRecordData({
  String? fuel,
  String? image,
  String? location,
  String? name,
  int? price,
  String? speed,
  String? transmission,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fuel': fuel,
      'image': image,
      'location': location,
      'name': name,
      'price': price,
      'speed': speed,
      'transmission': transmission,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarsRecordDocumentEquality implements Equality<CarsRecord> {
  const CarsRecordDocumentEquality();

  @override
  bool equals(CarsRecord? e1, CarsRecord? e2) {
    return e1?.fuel == e2?.fuel &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.speed == e2?.speed &&
        e1?.transmission == e2?.transmission &&
        e1?.type == e2?.type;
  }

  @override
  int hash(CarsRecord? e) => const ListEquality().hash([
        e?.fuel,
        e?.image,
        e?.location,
        e?.name,
        e?.price,
        e?.speed,
        e?.transmission,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is CarsRecord;
}

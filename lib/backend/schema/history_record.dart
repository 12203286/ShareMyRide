import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryRecord extends FirestoreRecord {
  HistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "car" field.
  String? _car;
  String get car => _car ?? '';
  bool hasCar() => _car != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "card" field.
  String? _card;
  String get card => _card ?? '';
  bool hasCard() => _card != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _address = snapshotData['address'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _car = snapshotData['car'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _card = snapshotData['card'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('history');

  static Stream<HistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryRecord.fromSnapshot(s));

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistoryRecord.fromSnapshot(s));

  static HistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryRecordData({
  String? uid,
  String? address,
  int? price,
  String? car,
  DateTime? date,
  String? image,
  String? card,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'address': address,
      'price': price,
      'car': car,
      'date': date,
      'image': image,
      'card': card,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryRecordDocumentEquality implements Equality<HistoryRecord> {
  const HistoryRecordDocumentEquality();

  @override
  bool equals(HistoryRecord? e1, HistoryRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.address == e2?.address &&
        e1?.price == e2?.price &&
        e1?.car == e2?.car &&
        e1?.date == e2?.date &&
        e1?.image == e2?.image &&
        e1?.card == e2?.card;
  }

  @override
  int hash(HistoryRecord? e) => const ListEquality()
      .hash([e?.uid, e?.address, e?.price, e?.car, e?.date, e?.image, e?.card]);

  @override
  bool isValidKey(Object? o) => o is HistoryRecord;
}

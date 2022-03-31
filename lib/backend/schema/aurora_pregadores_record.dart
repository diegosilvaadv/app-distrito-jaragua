import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_pregadores_record.g.dart';

abstract class AuroraPregadoresRecord
    implements Built<AuroraPregadoresRecord, AuroraPregadoresRecordBuilder> {
  static Serializer<AuroraPregadoresRecord> get serializer =>
      _$auroraPregadoresRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraPregadoresRecordBuilder builder) =>
      builder
        ..nome = ''
        ..igreja = ''
        ..whatsapp = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_pregadores');

  static Stream<AuroraPregadoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraPregadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraPregadoresRecord._();
  factory AuroraPregadoresRecord(
          [void Function(AuroraPregadoresRecordBuilder) updates]) =
      _$AuroraPregadoresRecord;

  static AuroraPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraPregadoresRecordData({
  String nome,
  DateTime data,
  String igreja,
  String whatsapp,
  String img,
  bool ativo,
}) =>
    serializers.toFirestore(
        AuroraPregadoresRecord.serializer,
        AuroraPregadoresRecord((a) => a
          ..nome = nome
          ..data = data
          ..igreja = igreja
          ..whatsapp = whatsapp
          ..img = img
          ..ativo = ativo));

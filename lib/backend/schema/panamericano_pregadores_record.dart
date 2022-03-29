import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'panamericano_pregadores_record.g.dart';

abstract class PanamericanoPregadoresRecord
    implements
        Built<PanamericanoPregadoresRecord,
            PanamericanoPregadoresRecordBuilder> {
  static Serializer<PanamericanoPregadoresRecord> get serializer =>
      _$panamericanoPregadoresRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PanamericanoPregadoresRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..igreja = ''
        ..whatsapp = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('panamericano_pregadores');

  static Stream<PanamericanoPregadoresRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PanamericanoPregadoresRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PanamericanoPregadoresRecord._();
  factory PanamericanoPregadoresRecord(
          [void Function(PanamericanoPregadoresRecordBuilder) updates]) =
      _$PanamericanoPregadoresRecord;

  static PanamericanoPregadoresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPanamericanoPregadoresRecordData({
  String nome,
  DateTime data,
  String img,
  String igreja,
  String whatsapp,
}) =>
    serializers.toFirestore(
        PanamericanoPregadoresRecord.serializer,
        PanamericanoPregadoresRecord((p) => p
          ..nome = nome
          ..data = data
          ..img = img
          ..igreja = igreja
          ..whatsapp = whatsapp));

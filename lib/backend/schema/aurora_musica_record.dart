import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aurora_musica_record.g.dart';

abstract class AuroraMusicaRecord
    implements Built<AuroraMusicaRecord, AuroraMusicaRecordBuilder> {
  static Serializer<AuroraMusicaRecord> get serializer =>
      _$auroraMusicaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  String get igreja;

  @nullable
  String get whatsapp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuroraMusicaRecordBuilder builder) => builder
    ..nome = ''
    ..img = ''
    ..ativo = false
    ..igreja = ''
    ..whatsapp = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aurora_musica');

  static Stream<AuroraMusicaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuroraMusicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuroraMusicaRecord._();
  factory AuroraMusicaRecord(
          [void Function(AuroraMusicaRecordBuilder) updates]) =
      _$AuroraMusicaRecord;

  static AuroraMusicaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuroraMusicaRecordData({
  String nome,
  DateTime data,
  String img,
  bool ativo,
  String igreja,
  String whatsapp,
}) =>
    serializers.toFirestore(
        AuroraMusicaRecord.serializer,
        AuroraMusicaRecord((a) => a
          ..nome = nome
          ..data = data
          ..img = img
          ..ativo = ativo
          ..igreja = igreja
          ..whatsapp = whatsapp));

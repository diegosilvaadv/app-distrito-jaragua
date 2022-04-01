import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anuncios_panamericano_record.g.dart';

abstract class AnunciosPanamericanoRecord
    implements
        Built<AnunciosPanamericanoRecord, AnunciosPanamericanoRecordBuilder> {
  static Serializer<AnunciosPanamericanoRecord> get serializer =>
      _$anunciosPanamericanoRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get descricao;

  @nullable
  String get local;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnunciosPanamericanoRecordBuilder builder) =>
      builder
        ..titulo = ''
        ..descricao = ''
        ..local = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anuncios_panamericano');

  static Stream<AnunciosPanamericanoRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnunciosPanamericanoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnunciosPanamericanoRecord._();
  factory AnunciosPanamericanoRecord(
          [void Function(AnunciosPanamericanoRecordBuilder) updates]) =
      _$AnunciosPanamericanoRecord;

  static AnunciosPanamericanoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnunciosPanamericanoRecordData({
  String titulo,
  String descricao,
  String local,
  DateTime data,
  String img,
  bool ativo,
}) =>
    serializers.toFirestore(
        AnunciosPanamericanoRecord.serializer,
        AnunciosPanamericanoRecord((a) => a
          ..titulo = titulo
          ..descricao = descricao
          ..local = local
          ..data = data
          ..img = img
          ..ativo = ativo));

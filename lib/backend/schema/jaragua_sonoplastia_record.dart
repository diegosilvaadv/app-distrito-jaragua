import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'jaragua_sonoplastia_record.g.dart';

abstract class JaraguaSonoplastiaRecord
    implements
        Built<JaraguaSonoplastiaRecord, JaraguaSonoplastiaRecordBuilder> {
  static Serializer<JaraguaSonoplastiaRecord> get serializer =>
      _$jaraguaSonoplastiaRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get img;

  @nullable
  bool get ativo;

  @nullable
  DateTime get data;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(JaraguaSonoplastiaRecordBuilder builder) =>
      builder
        ..nome = ''
        ..img = ''
        ..ativo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jaragua_sonoplastia');

  static Stream<JaraguaSonoplastiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<JaraguaSonoplastiaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  JaraguaSonoplastiaRecord._();
  factory JaraguaSonoplastiaRecord(
          [void Function(JaraguaSonoplastiaRecordBuilder) updates]) =
      _$JaraguaSonoplastiaRecord;

  static JaraguaSonoplastiaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createJaraguaSonoplastiaRecordData({
  String nome,
  String img,
  bool ativo,
  DateTime data,
}) =>
    serializers.toFirestore(
        JaraguaSonoplastiaRecord.serializer,
        JaraguaSonoplastiaRecord((j) => j
          ..nome = nome
          ..img = img
          ..ativo = ativo
          ..data = data));

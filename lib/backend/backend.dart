import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/jaragua_pregadores_record.dart';
import 'schema/ipanema_pregadores_record.dart';
import 'schema/panamericano_pregadores_record.dart';
import 'schema/aurora_pregadores_record.dart';
import 'schema/anuncios_distrital_record.dart';
import 'schema/jaragua_sonoplastia_record.dart';
import 'schema/panamericano_sonoplastia_record.dart';
import 'schema/ipanema_sonoplastia_record.dart';
import 'schema/aurora_sonoplastia_record.dart';
import 'schema/anuncios_aurora_record.dart';
import 'schema/anuncios_ipanema_record.dart';
import 'schema/anuncios_panamericano_record.dart';
import 'schema/jaragua_musica_record.dart';
import 'schema/aurora_musica_record.dart';
import 'schema/ipanema_musica_record.dart';
import 'schema/panamericano_musica_record.dart';
import 'schema/anuncios_jaragua_record.dart';
import 'schema/escala_pastoral_record.dart';
import 'schema/serializers.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/jaragua_pregadores_record.dart';
export 'schema/ipanema_pregadores_record.dart';
export 'schema/panamericano_pregadores_record.dart';
export 'schema/aurora_pregadores_record.dart';
export 'schema/anuncios_distrital_record.dart';
export 'schema/jaragua_sonoplastia_record.dart';
export 'schema/panamericano_sonoplastia_record.dart';
export 'schema/ipanema_sonoplastia_record.dart';
export 'schema/aurora_sonoplastia_record.dart';
export 'schema/anuncios_aurora_record.dart';
export 'schema/anuncios_ipanema_record.dart';
export 'schema/anuncios_panamericano_record.dart';
export 'schema/jaragua_musica_record.dart';
export 'schema/aurora_musica_record.dart';
export 'schema/ipanema_musica_record.dart';
export 'schema/panamericano_musica_record.dart';
export 'schema/anuncios_jaragua_record.dart';
export 'schema/escala_pastoral_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UsersRecord>> queryUsersRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query JaraguaPregadoresRecords (as a Stream and as a Future).
Stream<List<JaraguaPregadoresRecord>> queryJaraguaPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        JaraguaPregadoresRecord.collection, JaraguaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaPregadoresRecord>> queryJaraguaPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        JaraguaPregadoresRecord.collection, JaraguaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query IpanemaPregadoresRecords (as a Stream and as a Future).
Stream<List<IpanemaPregadoresRecord>> queryIpanemaPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        IpanemaPregadoresRecord.collection, IpanemaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaPregadoresRecord>> queryIpanemaPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        IpanemaPregadoresRecord.collection, IpanemaPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query PanamericanoPregadoresRecords (as a Stream and as a Future).
Stream<List<PanamericanoPregadoresRecord>> queryPanamericanoPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoPregadoresRecord.collection,
        PanamericanoPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoPregadoresRecord>>
    queryPanamericanoPregadoresRecordOnce(
            {Query Function(Query) queryBuilder,
            int limit = -1,
            bool singleRecord = false}) =>
        queryCollectionOnce(PanamericanoPregadoresRecord.collection,
            PanamericanoPregadoresRecord.serializer,
            queryBuilder: queryBuilder,
            limit: limit,
            singleRecord: singleRecord);

/// Functions to query AuroraPregadoresRecords (as a Stream and as a Future).
Stream<List<AuroraPregadoresRecord>> queryAuroraPregadoresRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraPregadoresRecord.collection, AuroraPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraPregadoresRecord>> queryAuroraPregadoresRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraPregadoresRecord.collection, AuroraPregadoresRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AnunciosDistritalRecords (as a Stream and as a Future).
Stream<List<AnunciosDistritalRecord>> queryAnunciosDistritalRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosDistritalRecord.collection, AnunciosDistritalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosDistritalRecord>> queryAnunciosDistritalRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosDistritalRecord.collection, AnunciosDistritalRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query JaraguaSonoplastiaRecords (as a Stream and as a Future).
Stream<List<JaraguaSonoplastiaRecord>> queryJaraguaSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(JaraguaSonoplastiaRecord.collection,
        JaraguaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaSonoplastiaRecord>> queryJaraguaSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(JaraguaSonoplastiaRecord.collection,
        JaraguaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query PanamericanoSonoplastiaRecords (as a Stream and as a Future).
Stream<List<PanamericanoSonoplastiaRecord>> queryPanamericanoSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoSonoplastiaRecord.collection,
        PanamericanoSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoSonoplastiaRecord>>
    queryPanamericanoSonoplastiaRecordOnce(
            {Query Function(Query) queryBuilder,
            int limit = -1,
            bool singleRecord = false}) =>
        queryCollectionOnce(PanamericanoSonoplastiaRecord.collection,
            PanamericanoSonoplastiaRecord.serializer,
            queryBuilder: queryBuilder,
            limit: limit,
            singleRecord: singleRecord);

/// Functions to query IpanemaSonoplastiaRecords (as a Stream and as a Future).
Stream<List<IpanemaSonoplastiaRecord>> queryIpanemaSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(IpanemaSonoplastiaRecord.collection,
        IpanemaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaSonoplastiaRecord>> queryIpanemaSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(IpanemaSonoplastiaRecord.collection,
        IpanemaSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AuroraSonoplastiaRecords (as a Stream and as a Future).
Stream<List<AuroraSonoplastiaRecord>> queryAuroraSonoplastiaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraSonoplastiaRecord.collection, AuroraSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraSonoplastiaRecord>> queryAuroraSonoplastiaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraSonoplastiaRecord.collection, AuroraSonoplastiaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AnunciosAuroraRecords (as a Stream and as a Future).
Stream<List<AnunciosAuroraRecord>> queryAnunciosAuroraRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosAuroraRecord.collection, AnunciosAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosAuroraRecord>> queryAnunciosAuroraRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosAuroraRecord.collection, AnunciosAuroraRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AnunciosIpanemaRecords (as a Stream and as a Future).
Stream<List<AnunciosIpanemaRecord>> queryAnunciosIpanemaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosIpanemaRecord.collection, AnunciosIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosIpanemaRecord>> queryAnunciosIpanemaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosIpanemaRecord.collection, AnunciosIpanemaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AnunciosPanamericanoRecords (as a Stream and as a Future).
Stream<List<AnunciosPanamericanoRecord>> queryAnunciosPanamericanoRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(AnunciosPanamericanoRecord.collection,
        AnunciosPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosPanamericanoRecord>> queryAnunciosPanamericanoRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(AnunciosPanamericanoRecord.collection,
        AnunciosPanamericanoRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query JaraguaMusicaRecords (as a Stream and as a Future).
Stream<List<JaraguaMusicaRecord>> queryJaraguaMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        JaraguaMusicaRecord.collection, JaraguaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<JaraguaMusicaRecord>> queryJaraguaMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        JaraguaMusicaRecord.collection, JaraguaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AuroraMusicaRecords (as a Stream and as a Future).
Stream<List<AuroraMusicaRecord>> queryAuroraMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AuroraMusicaRecord.collection, AuroraMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AuroraMusicaRecord>> queryAuroraMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AuroraMusicaRecord.collection, AuroraMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query IpanemaMusicaRecords (as a Stream and as a Future).
Stream<List<IpanemaMusicaRecord>> queryIpanemaMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        IpanemaMusicaRecord.collection, IpanemaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<IpanemaMusicaRecord>> queryIpanemaMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        IpanemaMusicaRecord.collection, IpanemaMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query PanamericanoMusicaRecords (as a Stream and as a Future).
Stream<List<PanamericanoMusicaRecord>> queryPanamericanoMusicaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(PanamericanoMusicaRecord.collection,
        PanamericanoMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<PanamericanoMusicaRecord>> queryPanamericanoMusicaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(PanamericanoMusicaRecord.collection,
        PanamericanoMusicaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query AnunciosJaraguaRecords (as a Stream and as a Future).
Stream<List<AnunciosJaraguaRecord>> queryAnunciosJaraguaRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        AnunciosJaraguaRecord.collection, AnunciosJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<AnunciosJaraguaRecord>> queryAnunciosJaraguaRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        AnunciosJaraguaRecord.collection, AnunciosJaraguaRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query EscalaPastoralRecords (as a Stream and as a Future).
Stream<List<EscalaPastoralRecord>> queryEscalaPastoralRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        EscalaPastoralRecord.collection, EscalaPastoralRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<EscalaPastoralRecord>> queryEscalaPastoralRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        EscalaPastoralRecord.collection, EscalaPastoralRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

// Creates a Firestore record representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}

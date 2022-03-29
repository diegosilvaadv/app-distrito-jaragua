import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class EscPregadoresJaraguaWidget extends StatefulWidget {
  const EscPregadoresJaraguaWidget({Key key}) : super(key: key);

  @override
  _EscPregadoresJaraguaWidgetState createState() =>
      _EscPregadoresJaraguaWidgetState();
}

class _EscPregadoresJaraguaWidgetState
    extends State<EscPregadoresJaraguaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 70,
          icon: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 40,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'ESC DE PREGADORES',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Advent Sanslogo',
                color: Colors.white,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: StreamBuilder<List<JaraguaPregadoresRecord>>(
              stream: queryJaraguaPregadoresRecord(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                List<JaraguaPregadoresRecord>
                    columnJaraguaPregadoresRecordList = snapshot.data;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      columnJaraguaPregadoresRecordList.length, (columnIndex) {
                    final columnJaraguaPregadoresRecord =
                        columnJaraguaPregadoresRecordList[columnIndex];
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          columnJaraguaPregadoresRecord.img,
                                          'https://cdn-icons.flaticon.com/png/512/3220/premium/3220404.png?token=exp=1648579243~hmac=500467bd6d4c89dfe55bf383bd0bf123',
                                        ),
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'NOME: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'OpensSans',
                                                          color: Colors.white,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  columnJaraguaPregadoresRecord
                                                      .nome,
                                                  'S/ Nome',
                                                ).maybeHandleOverflow(
                                                  maxChars: 20,
                                                  replacement: '…',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'OpensSans',
                                                      color: Color(0xFFDBDBDB),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'DATA: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'OpensSans',
                                                          color: Colors.white,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                      'd/M/y',
                                                      columnJaraguaPregadoresRecord
                                                          .data),
                                                  'S/ Data',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'OpensSans',
                                                      color: Color(0xFFDBDBDB),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                        'EEEE',
                                                        columnJaraguaPregadoresRecord
                                                            .data),
                                                    'S/ Dia',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'OpensSans',
                                                        color:
                                                            Color(0xFFF9F9F9),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'WhatsApp: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'OpensSans',
                                                          color: Colors.white,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              AutoSizeText(
                                                valueOrDefault<String>(
                                                  columnJaraguaPregadoresRecord
                                                      .whatsapp,
                                                  'S/ Whats',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'OpensSans',
                                                      color: Color(0xFFD4D4D4),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Igreja: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'OpensSans',
                                                          color: Colors.white,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  columnJaraguaPregadoresRecord
                                                      .igreja,
                                                  'S/ Igreja',
                                                ).maybeHandleOverflow(
                                                  maxChars: 20,
                                                  replacement: '…',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'OpensSans',
                                                      color: Color(0xFFDBDBDB),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Wrap(
                          spacing: 0,
                          runSpacing: 0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Share.share(
                                    '${columnJaraguaPregadoresRecord.nome}${dateTimeFormat('yMd', columnJaraguaPregadoresRecord.data)}${columnJaraguaPregadoresRecord.igreja}${columnJaraguaPregadoresRecord.whatsapp}');
                              },
                              child: Icon(
                                Icons.share,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pembayaran_model.dart';
export 'pembayaran_model.dart';

class PembayaranWidget extends StatefulWidget {
  const PembayaranWidget({Key? key}) : super(key: key);

  @override
  _PembayaranWidgetState createState() => _PembayaranWidgetState();
}

class _PembayaranWidgetState extends State<PembayaranWidget> {
  late PembayaranModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PembayaranModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/pppp.jpg',
                  width: 372,
                  height: 813,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.28),
              child: Container(
                width: 312,
                height: 316,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Invoice',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 312,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/Cofee_susu_pandan.webp',
                                  width: 300,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 212,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Kopi Susu Pandan',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Text(
                                    'Rp.30.000',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                      child: Container(
                        width: 312,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'assets/images/Hazelnut_Latte.webp',
                                  width: 300,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              width: 212,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Hazelnut Latte',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Text(
                                    'Rp.35.000',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.27, -0.33),
              child: FlutterFlowIconButton(
                borderColor: Colors.black,
                borderRadius: 20,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.8, -0.33),
              child: FlutterFlowIconButton(
                borderColor: Colors.black,
                borderRadius: 20,
                borderWidth: 1,
                buttonSize: 40,
                icon: FaIcon(
                  FontAwesomeIcons.minus,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.48, -0.33),
              child: Text(
                '1',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 25,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.27, 0.06),
              child: FlutterFlowIconButton(
                borderColor: Colors.black,
                borderRadius: 20,
                borderWidth: 1,
                buttonSize: 40,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.82, 0.06),
              child: FlutterFlowIconButton(
                borderColor: Colors.black,
                borderRadius: 20,
                borderWidth: 1,
                buttonSize: 40,
                icon: FaIcon(
                  FontAwesomeIcons.minus,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.5, 0.06),
              child: Text(
                '1',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 25,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.41),
              child: Container(
                width: 312,
                height: 64,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Total',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Text(
                      'Rp.65.000',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Pay Now',
                      options: FFButtonOptions(
                        height: 33,
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 9,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

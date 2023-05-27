import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'dashbord_model.dart';
export 'dashbord_model.dart';

class DashbordWidget extends StatefulWidget {
  const DashbordWidget({Key? key}) : super(key: key);

  @override
  _DashbordWidgetState createState() => _DashbordWidgetState();
}

class _DashbordWidgetState extends State<DashbordWidget> {
  late DashbordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashbordModel());

    _model.textController ??= TextEditingController();
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
              alignment: AlignmentDirectional(0, -1.01),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: 393,
                  height: 57,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Container(
                          width: 238,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.search,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 8, 0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Search',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.black,
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 40,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        icon: Icon(
                          Icons.notifications_active_sharp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.black,
                        borderRadius: 20,
                        borderWidth: 1,
                        buttonSize: 40,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 24,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.88, -0.82),
              child: Text(
                'Coffe',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.31, -0.82),
              child: Text(
                'Non Coffe',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0x8B14181B),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.37, -0.82),
              child: Text(
                'Snacks',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0x8D14181B),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.66, -0.61),
              child: Container(
                width: 273,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      width: 173,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Kopi Susu Pandan',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Rp.30.000',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.66, -0.27),
              child: Container(
                width: 273,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/kopi_susu_tiramisu.webp',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 173,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Kopi Susu Tiramisu',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Rp.30.000',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.66, 0.08),
              child: Container(
                width: 273,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/cramel.webp',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 173,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Caramel Latte',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Rp.35.000',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.66, 0.43),
              child: Container(
                width: 273,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      width: 173,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Hazelnut Latte',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Rp.35.000',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.42, -0.5),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add',
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF12F920),
                      ),
                  borderSide: BorderSide(
                    color: Color(0xFF12F920),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.44, -0.18),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add',
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF12F920),
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Color(0xFF12F920),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.43, 0.13),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add',
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF12F920),
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Color(0xFF12F920),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.43, 0.46),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Add',
                options: FFButtonOptions(
                  height: 40,
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF12F920),
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Color(0xFF12F920),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lastpage_model.dart';
export 'lastpage_model.dart';

class LastpageWidget extends StatefulWidget {
  const LastpageWidget({Key? key}) : super(key: key);

  @override
  _LastpageWidgetState createState() => _LastpageWidgetState();
}

class _LastpageWidgetState extends State<LastpageWidget> {
  late LastpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LastpageModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.33),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Container(
                    width: 262,
                    height: 246,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.checkCircle,
                      color: Color(0xFF12F920),
                      size: 250,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, 0.2),
                child: Text(
                  'Pembayaran Telah Berhasil',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.78),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Back To Home',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

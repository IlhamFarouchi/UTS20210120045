import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'loadingscreen_model.dart';
export 'loadingscreen_model.dart';

class LoadingscreenWidget extends StatefulWidget {
  const LoadingscreenWidget({Key? key}) : super(key: key);

  @override
  _LoadingscreenWidgetState createState() => _LoadingscreenWidgetState();
}

class _LoadingscreenWidgetState extends State<LoadingscreenWidget> {
  late LoadingscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingscreenModel());
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
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/logo_sunyi_2-removebg-preview.png',
                width: 427,
                height: 380,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

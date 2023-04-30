import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sponsors_component_model.dart';
export 'sponsors_component_model.dart';

class SponsorsComponentWidget extends StatefulWidget {
  const SponsorsComponentWidget({Key? key}) : super(key: key);

  @override
  _SponsorsComponentWidgetState createState() =>
      _SponsorsComponentWidgetState();
}

class _SponsorsComponentWidgetState extends State<SponsorsComponentWidget> {
  late SponsorsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SponsorsComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 203.2,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
              child: Text(
                'Sponsors',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000CEB),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
              child: Image.asset(
                'assets/images/1920px-Google_2015_logo.svg.png',
                width: 116.0,
                height: 39.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 31.84, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/Andela-logo-landscape-blue.png',
                    width: 79.8,
                    height: 23.3,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/hover_logo.png',
                    width: 79.9,
                    height: 24.6,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/jetbrains.png',
                    width: 22.2,
                    height: 24.1,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

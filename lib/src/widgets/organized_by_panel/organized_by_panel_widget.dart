import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'organized_by_panel_model.dart';
export 'organized_by_panel_model.dart';

class OrganizedByPanelWidget extends StatefulWidget {
  const OrganizedByPanelWidget({Key? key}) : super(key: key);

  @override
  _OrganizedByPanelWidgetState createState() => _OrganizedByPanelWidgetState();
}

class _OrganizedByPanelWidgetState extends State<OrganizedByPanelWidget> {
  late OrganizedByPanelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrganizedByPanelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
          child: Text(
            'Organised by;',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF000CEB),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.7, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/android254.png',
                width: 29.4,
                height: 38.4,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(34.23, 0.0, 34.0, 0.0),
                child: Image.asset(
                  'assets/images/kotlin.png',
                  width: 68.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                'assets/images/unnamed.png',
                width: 51.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 34.26, 0.0, 22.26),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/appslab.png',
                width: 25.2,
                height: 36.5,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.48, 0.0, 50.66, 0.0),
                child: Image.asset(
                  'assets/images/Layer_2-3.png',
                  width: 20.2,
                  height: 37.2,
                  fit: BoxFit.cover,
                ),
              ),
              Image.asset(
                'assets/images/tiskoks.png',
                width: 39.2,
                height: 36.7,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

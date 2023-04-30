import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'organizers_component_model.dart';
export 'organizers_component_model.dart';

class OrganizersComponentWidget extends StatefulWidget {
  const OrganizersComponentWidget({Key? key}) : super(key: key);

  @override
  _OrganizersComponentWidgetState createState() =>
      _OrganizersComponentWidgetState();
}

class _OrganizersComponentWidgetState extends State<OrganizersComponentWidget> {
  late OrganizersComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrganizersComponentModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 99.0,
            height: 99.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary400,
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/Screenshot_2022-11-10_at_20.58.45_2_90.png',
                  width: 74.0,
                  height: 74.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
            child: Text(
              'Eric Muli',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
            child: Text(
              'The Chief',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF707070),
                    fontSize: 11.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

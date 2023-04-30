import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sessions_card_component_model.dart';
export 'sessions_card_component_model.dart';

class SessionsCardComponentWidget extends StatefulWidget {
  const SessionsCardComponentWidget({
    Key? key,
    this.sessionsDetails,
  }) : super(key: key);

  final dynamic sessionsDetails;

  @override
  _SessionsCardComponentWidgetState createState() =>
      _SessionsCardComponentWidgetState();
}

class _SessionsCardComponentWidgetState
    extends State<SessionsCardComponentWidget> {
  late SessionsCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionsCardComponentModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.06, 0.0),
      child: Container(
        width: 248.9,
        height: 215.2,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              child: Image.network(
                getJsonField(
                  widget.sessionsDetails,
                  r'''$.session_image''',
                ),
                width: double.infinity,
                height: 124.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.2, 10.0, 0.0),
              child: Text(
                getJsonField(
                  widget.sessionsDetails,
                  r'''$.title''',
                ).toString(),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 13.0, 10.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '@10:30',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFF707070),
                          fontSize: 11.0,
                        ),
                  ),
                  SizedBox(
                    height: 10.0,
                    child: VerticalDivider(
                      thickness: 2.0,
                      color: Color(0xFF707070),
                    ),
                  ),
                  Text(
                    'Room 1',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFF707070),
                          fontSize: 11.0,
                        ),
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

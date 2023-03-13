import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'session_date_component_model.dart';
export 'session_date_component_model.dart';

class SessionDateComponentWidget extends StatefulWidget {
  const SessionDateComponentWidget({
    Key? key,
    String? date,
    String? day,
    this.color,
    this.dateColor,
    this.dayColor,
  })  : this.date = date ?? '',
        this.day = day ?? ' ',
        super(key: key);

  final String date;
  final String day;
  final Color? color;
  final Color? dateColor;
  final Color? dayColor;

  @override
  _SessionDateComponentWidgetState createState() =>
      _SessionDateComponentWidgetState();
}

class _SessionDateComponentWidgetState
    extends State<SessionDateComponentWidget> {
  late SessionDateComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionDateComponentModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 21.0, 0.0),
      child: Container(
        width: 51.0,
        height: 51.0,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                widget.date,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      color: widget.dateColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Text(
              widget.day,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: widget.dayColor,
                    fontSize: 11.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

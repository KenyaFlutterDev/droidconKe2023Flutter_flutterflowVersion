import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speakers_component_model.dart';
export 'speakers_component_model.dart';

class SpeakersComponentWidget extends StatefulWidget {
  const SpeakersComponentWidget({
    Key? key,
    this.speaker,
  }) : super(key: key);

  final dynamic speaker;

  @override
  _SpeakersComponentWidgetState createState() =>
      _SpeakersComponentWidgetState();
}

class _SpeakersComponentWidgetState extends State<SpeakersComponentWidget> {
  late SpeakersComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakersComponentModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 23.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 76.0,
            height: 76.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary400,
              borderRadius: BorderRadius.circular(12.0),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  getJsonField(
                    widget.speaker,
                    r'''$.avatar''',
                  ),
                  width: 74.0,
                  height: 74.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              getJsonField(
                widget.speaker,
                r'''$.name''',
              ).toString(),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    fontSize: 11.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

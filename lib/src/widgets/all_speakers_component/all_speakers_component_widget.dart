import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_speakers_component_model.dart';
export 'all_speakers_component_model.dart';

class AllSpeakersComponentWidget extends StatefulWidget {
  const AllSpeakersComponentWidget({
    Key? key,
    this.speaker,
  }) : super(key: key);

  final dynamic speaker;

  @override
  _AllSpeakersComponentWidgetState createState() =>
      _AllSpeakersComponentWidgetState();
}

class _AllSpeakersComponentWidgetState
    extends State<AllSpeakersComponentWidget> {
  late AllSpeakersComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllSpeakersComponentModel());

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

    return Container(
      width: 181.1,
      height: 294.6,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.62, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 109.0,
              height: 109.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.43, 0.0, 0.0),
              child: Text(
                getJsonField(
                  widget.speaker,
                  r'''$.name''',
                ).toString(),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF000CEB),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Container(
              width: 162.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.57, 0.0, 0.0),
                child: Text(
                  'Kenya Partner Lead at droidcon Berlin | Android | Kotlin | Flutter | C++',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF707070),
                        fontSize: 11.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.4),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'session_details_page',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 2000),
                        ),
                      },
                    );
                  },
                  child: Container(
                    width: 143.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 5.0,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.64, 0.0, 0.0, 0.0),
                        child: Text(
                          'SESSION',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

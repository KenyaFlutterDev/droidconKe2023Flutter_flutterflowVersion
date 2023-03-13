import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feeds_cards_component_model.dart';
export 'feeds_cards_component_model.dart';

class FeedsCardsComponentWidget extends StatefulWidget {
  const FeedsCardsComponentWidget({Key? key}) : super(key: key);

  @override
  _FeedsCardsComponentWidgetState createState() =>
      _FeedsCardsComponentWidgetState();
}

class _FeedsCardsComponentWidgetState extends State<FeedsCardsComponentWidget> {
  late FeedsCardsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedsCardsComponentModel());
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
      width: double.infinity,
      height: 378.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'We are pleased to have a team from Andela Kenya who will have a talk about Software Engineers to the Power of X from an Employer\'s Perspective.',
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/EBhIV3EXsAA84vX.png',
              width: double.infinity,
              height: 209.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.3, 0.0, 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Share',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Color(0xFF000CEB),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(7.27, 0.0, 0.0, 0.0),
                      child: FaIcon(
                        FontAwesomeIcons.share,
                        color: Color(0xFF000CEB),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  '5 hours ago',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFF707070),
                        fontSize: 12.0,
                      ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}

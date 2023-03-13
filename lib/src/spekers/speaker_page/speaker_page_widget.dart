import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/twitter_handle_component/twitter_handle_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speaker_page_model.dart';
export 'speaker_page_model.dart';

class SpeakerPageWidget extends StatefulWidget {
  const SpeakerPageWidget({Key? key}) : super(key: key);

  @override
  _SpeakerPageWidgetState createState() => _SpeakerPageWidgetState();
}

class _SpeakerPageWidgetState extends State<SpeakerPageWidget> {
  late SpeakerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeakerPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/Group_1074.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 70.0, 20.0, 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.android,
                              color: Color(0xFFFF6E4D),
                              size: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  7.59, 0.0, 0.0, 0.0),
                              child: Text(
                                'Speaker',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFFFF6E4D),
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Eric Muli',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF000CEB),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 232.0,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 11.0, 0.0, 0.0),
                                child: Text(
                                  'Kenya Partner Lead at droidcon Berlin | Android | Kotlin | Flutter | C++',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF707070),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Bio',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 27.0),
                          child: Text(
                            'Worked at Intel, co-Founded Moringa School, then started @earlycamp to train young children from 5-16 on how to solve problems with technology. \n\nStarted 818interactive to tell African stories with Games to a global audience. \n\nCommunity wise I organize #Android & #Kotlin developers every month for a meetUp to chat about technology. \n\nI Lead a cool team in organizing #droidConKE the largest android developer focussed event in Sub Saharan Africa. \n\nI train people,mentor them, build things, am highly experimental, read alot and socialize vertically.',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Divider(
                          thickness: 2.0,
                        ),
                        wrapWithModel(
                          model: _model.twitterHandleComponentModel,
                          updateCallback: () => setState(() {}),
                          child: TwitterHandleComponentWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.78),
              child: Container(
                width: 103.0,
                height: 103.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/Screenshot_2022-11-10_at_20.58.45_2_90.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 0.0, 0.0),
              child: InkWell(
                onTap: () async {
                  context.safePop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                      size: 27.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(21.78, 0.0, 0.0, 0.0),
                      child: Text(
                        'Speaker',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

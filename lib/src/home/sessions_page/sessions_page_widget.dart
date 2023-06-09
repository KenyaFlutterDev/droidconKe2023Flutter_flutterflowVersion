import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/sesion_header_component/sesion_header_component_widget.dart';
import '/src/widgets/session_date_component/session_date_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sessions_page_model.dart';
export 'sessions_page_model.dart';

class SessionsPageWidget extends StatefulWidget {
  const SessionsPageWidget({Key? key}) : super(key: key);

  @override
  _SessionsPageWidgetState createState() => _SessionsPageWidgetState();
}

class _SessionsPageWidgetState extends State<SessionsPageWidget> {
  late SessionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionsPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF4F4F3),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.sesionHeaderComponentModel,
                  updateCallback: () => setState(() {}),
                  updateOnChange: true,
                  child: SesionHeaderComponentWidget(),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 32.5, 0.0, 21.52),
                  child: Container(
                    width: double.infinity,
                    height: 51.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.sessionDateComponentModel1,
                              updateCallback: () => setState(() {}),
                              child: SessionDateComponentWidget(
                                date: '16th',
                                day: 'Day 1',
                                color: Color(0xFFFF6E4D),
                                dateColor: Colors.white,
                                dayColor: Colors.white,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.sessionDateComponentModel2,
                              updateCallback: () => setState(() {}),
                              child: SessionDateComponentWidget(
                                date: '17th',
                                day: 'Day 2',
                                color: Color(0xFFF1FCF8),
                                dateColor: Color(0xFF20201E),
                                dayColor: Color(0xFF707070),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.sessionDateComponentModel3,
                              updateCallback: () => setState(() {}),
                              child: SessionDateComponentWidget(
                                date: '18th',
                                day: 'Day 3',
                                color: Color(0xFFF1FCF8),
                                dateColor: Color(0xFF20201E),
                                dayColor: Color(0xFF707070),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 53.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Switch.adaptive(
                                value: _model.switchValue ??= _model.mySessions,
                                onChanged: (newValue) async {
                                  setState(
                                      () => _model.switchValue = newValue!);
                                },
                                activeColor: Color(0xFFFF6E4D),
                                inactiveTrackColor: Color(0xFF20201E),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 6.0, 0.0, 0.0),
                              child: Text(
                                'My Sessions',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF707070),
                                      fontSize: 9.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.88, 0.0, 0.0),
                  child: Text(
                    _model.switchValue! ? 'My Session' : 'All Sessions',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFF000CEB),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                if (FFAppState().sessionListToggle == false)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final mySessionsDetails = List.generate(
                                  random_data.randomInteger(0, 7),
                                  (index) => random_data.randomInteger(5, 7))
                              .toList()
                              .take(20)
                              .toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: mySessionsDetails.length,
                            itemBuilder: (context, mySessionsDetailsIndex) {
                              final mySessionsDetailsItem =
                                  mySessionsDetails[mySessionsDetailsIndex];
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
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
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 2000),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 15.0, 12.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    '9:00',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Text(
                                                    'AM',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 15.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Keynote',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Container(
                                                    width: 240.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Community on a Global Scale ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          '9.00AM - 9:30AM',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF707070),
                                                                fontSize: 11.0,
                                                              ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.0,
                                                          child:
                                                              VerticalDivider(
                                                            thickness: 2.0,
                                                            color: Color(
                                                                0xFF707070),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Room 1',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Color(
                                                                    0xFF707070),
                                                                fontSize: 11.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .android,
                                                          color:
                                                              Color(0xFF000CEB),
                                                          size: 24.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.34,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Greg Fawson',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Color(
                                                                      0xFF000CEB),
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              if (_model.switchValue!
                                                  ? false
                                                  : true)
                                                Image.asset(
                                                  'assets/images/star.png',
                                                  width: 21.0,
                                                  height: 21.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              if (_model.switchValue!
                                                  ? true
                                                  : false)
                                                FaIcon(
                                                  FontAwesomeIcons.solidStar,
                                                  color: Color(0xFFFF6E4D),
                                                  size: 19.0,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (mySessionsDetailsIndex % 2 == 0
                                        ? true
                                        : false)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.8, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 7.4, 0.0, 12.23),
                                          child: Image.asset(
                                            'assets/images/green.png',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    if (!(mySessionsDetailsIndex % 2 == 0)
                                        ? true
                                        : false)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.8, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 7.4, 0.0, 12.23),
                                          child: Image.asset(
                                            'assets/images/orange.png',
                                            width: 24.0,
                                            height: 24.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                if (FFAppState().sessionListToggle == true)
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final mySessionsDetails = List.generate(
                                  random_data.randomInteger(0, 7),
                                  (index) => random_data.randomInteger(5, 7))
                              .toList()
                              .take(20)
                              .toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: mySessionsDetails.length,
                            itemBuilder: (context, mySessionsDetailsIndex) {
                              final mySessionsDetailsItem =
                                  mySessionsDetails[mySessionsDetailsIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 15.38),
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
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration:
                                              Duration(milliseconds: 2000),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 302.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                          child: Image.asset(
                                            'assets/images/FWMmgzPWAAMh9rp.png',
                                            width: double.infinity,
                                            height: 148.9,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 21.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '@10:30',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFF707070),
                                                      fontSize: 13.0,
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFF707070),
                                                      fontSize: 13.0,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 11.0, 10.0, 0.0),
                                          child: Text(
                                            'Transforming Famers Lives Using Android in Kenya',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -0.78),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  26.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 33.0,
                                                        height: 33.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      2.0,
                                                                      2.0,
                                                                      2.0),
                                                          child: Container(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/Screenshot_2022-11-10_at_20.58.45_2_90.png',
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -0.78),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  26.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 33.0,
                                                        height: 33.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      2.0,
                                                                      2.0,
                                                                      2.0,
                                                                      2.0),
                                                          child: Container(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/Screenshot_2022-11-10_at_20.58.45_2_90.png',
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (_model.switchValue!
                                                      ? false
                                                      : true)
                                                    Image.asset(
                                                      'assets/images/star.png',
                                                      width: 21.0,
                                                      height: 21.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  if (_model.switchValue!
                                                      ? true
                                                      : false)
                                                    FaIcon(
                                                      FontAwesomeIcons
                                                          .solidStar,
                                                      color: Color(0xFFFF6E4D),
                                                      size: 19.0,
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

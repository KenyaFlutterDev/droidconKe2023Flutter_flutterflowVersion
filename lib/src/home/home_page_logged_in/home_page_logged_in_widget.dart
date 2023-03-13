import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/sessions_card_component/sessions_card_component_widget.dart';
import '/src/widgets/speakers_component/speakers_component_widget.dart';
import '/src/widgets/sponsors_component/sponsors_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_logged_in_model.dart';
export 'home_page_logged_in_model.dart';

class HomePageLoggedInWidget extends StatefulWidget {
  const HomePageLoggedInWidget({Key? key}) : super(key: key);

  @override
  _HomePageLoggedInWidgetState createState() => _HomePageLoggedInWidgetState();
}

class _HomePageLoggedInWidgetState extends State<HomePageLoggedInWidget> {
  late HomePageLoggedInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageLoggedInModel());
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                    child: wrapWithModel(
                      model: _model.headerComponentModel,
                      updateCallback: () => setState(() {}),
                      child: HeaderComponentWidget(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Container(
                      width: 372.0,
                      height: 175.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/Screenshot_2023-03-11_at_22.11.30.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 76.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 0.0, 11.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sessions',
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'View All',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF000CEB),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                              Container(
                                width: 35.0,
                                height: 22.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE3E4FD),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '+45',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF000CEB),
                                          fontSize: 10.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 215.2,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final sessionaList = List.generate(
                                random_data.randomInteger(5, 6),
                                (index) => random_data.randomInteger(0, 10))
                            .toList()
                            .take(6)
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: sessionaList.length,
                          itemBuilder: (context, sessionaListIndex) {
                            final sessionaListItem =
                                sessionaList[sessionaListIndex];
                            return SessionsCardComponentWidget(
                              key: Key(
                                  'Keyg4r_${sessionaListIndex}_of_${sessionaList.length}'),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 76.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 0.0, 11.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Speakers',
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'View All',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF000CEB),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                              Container(
                                width: 35.0,
                                height: 22.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE3E4FD),
                                  borderRadius: BorderRadius.circular(12.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '+45',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF000CEB),
                                          fontSize: 10.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final usersList = List.generate(
                                random_data.randomInteger(7, 8),
                                (index) => random_data.randomInteger(0, 10))
                            .toList()
                            .take(20)
                            .toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: usersList.length,
                          itemBuilder: (context, usersListIndex) {
                            final usersListItem = usersList[usersListIndex];
                            return InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'speaker_page',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 2000),
                                    ),
                                  },
                                );
                              },
                              child: SpeakersComponentWidget(
                                key: Key(
                                    'Keyep8_${usersListIndex}_of_${usersList.length}'),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  wrapWithModel(
                    model: _model.sponsorsComponentModel,
                    updateCallback: () => setState(() {}),
                    child: SponsorsComponentWidget(),
                  ),
                  wrapWithModel(
                    model: _model.organisedbyComponentModel,
                    updateCallback: () => setState(() {}),
                    child: OrganisedbyComponentWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

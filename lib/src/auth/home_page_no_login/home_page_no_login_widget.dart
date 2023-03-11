import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/sponsors_component/sponsors_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_no_login_model.dart';
export 'home_page_no_login_model.dart';

class HomePageNoLoginWidget extends StatefulWidget {
  const HomePageNoLoginWidget({Key? key}) : super(key: key);

  @override
  _HomePageNoLoginWidgetState createState() => _HomePageNoLoginWidgetState();
}

class _HomePageNoLoginWidgetState extends State<HomePageNoLoginWidget> {
  late HomePageNoLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageNoLoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 4000));

      context.pushNamed(
        'home_page_logged_in',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 3000),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/Group_363.png',
                        width: 137.0,
                        height: 25.5,
                        fit: BoxFit.contain,
                      ),
                      Container(
                        width: 29.0,
                        height: 29.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.lock,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 14.3,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 59.0,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'Welcome to the largest Focussed Android Developer community in Africa',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                            ),
                      ),
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
                          'assets/images/Group_12.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 88.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 12.0, 0.0, 11.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/Group_16.png',
                              width: 118.0,
                              height: 65.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Call for Speakers',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Apply to be a speaker',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 10.0, 0.0),
                              child: Icon(
                                Icons.play_arrow,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
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

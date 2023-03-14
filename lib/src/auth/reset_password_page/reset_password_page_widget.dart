import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reset_password_page_model.dart';
export 'reset_password_page_model.dart';

class ResetPasswordPageWidget extends StatefulWidget {
  const ResetPasswordPageWidget({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageWidgetState createState() =>
      _ResetPasswordPageWidgetState();
}

class _ResetPasswordPageWidgetState extends State<ResetPasswordPageWidget> {
  late ResetPasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetPasswordPageModel());

    _model.emailAddressController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 27.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(21.78, 0.0, 0.0, 0.0),
                      child: Text(
                        'Reset password',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 82.48, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/Group_753.png',
                  width: 129.5,
                  height: 155.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 127.2, 20.0, 16.0),
              child: TextFormField(
                controller: _model.emailAddressController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email address',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintStyle: FlutterFlowTheme.of(context).bodyText2,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
                maxLines: null,
                validator:
                    _model.emailAddressControllerValidator.asValidator(context),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.05),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'reset_password_confirmation_page',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 2000),
                        ),
                      },
                    );
                  },
                  text: 'SEND RESET LINK',
                  options: FFButtonOptions(
                    width: 269.8,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 16.0,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 160.0, 0.0, 0.0),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'sign_in_page',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.leftToRight,
                          duration: Duration(milliseconds: 2000),
                        ),
                      },
                    );
                  },
                  child: Text(
                    'Back to Sign in',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFFFF6E4D),
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
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

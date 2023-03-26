import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'sign_in_page_model.dart';
export 'sign_in_page_model.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  _SignInPageWidgetState createState() => _SignInPageWidgetState();
}

class _SignInPageWidgetState extends State<SignInPageWidget> {
  late SignInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInPageModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
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
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if ((Theme.of(context).brightness == Brightness.light) == true)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/Group_1074.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                if ((Theme.of(context).brightness == Brightness.dark) == true)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/Group_381.png',
                      width: double.infinity,
                      height: 179.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                Stack(
                  alignment: AlignmentDirectional(0.3500000000000001, 0.7),
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 52.0, 0.0, 0.0),
                      child: Image.asset(
                        'assets/images/btn_google_dark_normal_ios.png',
                        width: 208.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Sign in with Google',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Color(0xFF191D1D),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
                  child: Text(
                    '- OR -',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          fontSize: 13.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 69.0, 20.0, 23.0),
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
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                    maxLines: null,
                    keyboardType: TextInputType.emailAddress,
                    validator: _model.emailAddressControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 28.0),
                  child: TextFormField(
                    controller: _model.passwordController,
                    obscureText: !_model.passwordVisibility,
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                    validator:
                        _model.passwordControllerValidator.asValidator(context),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.05),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'home_page_no_login',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 2000),
                            ),
                          },
                        );
                      },
                      text: 'SIGN IN',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 45.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.black,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle1
                            .override(
                              fontFamily: 'Montserrat',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 0.0, 0.0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'reset_password_page',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 2000),
                          ),
                        },
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontSize: 11.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 0.0),
                  child: Text(
                    'Don’t have an account?',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          fontSize: 11.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                  child: InkWell(
                    onTap: () async {
                      context.safePop();
                    },
                    child: Text(
                      'Sign up',
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
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () async {
                      context.safePop();
                    },
                    child: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                      size: 27.0,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(21.78, 26.0, 0.0, 0.0),
                    child: Text(
                      'Sign in',
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
          ],
        ),
      ),
    );
  }
}

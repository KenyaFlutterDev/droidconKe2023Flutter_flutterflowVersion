import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'google_sign_in_dialog_model.dart';
export 'google_sign_in_dialog_model.dart';

class GoogleSignInDialogWidget extends StatefulWidget {
  const GoogleSignInDialogWidget({Key? key}) : super(key: key);

  @override
  _GoogleSignInDialogWidgetState createState() =>
      _GoogleSignInDialogWidgetState();
}

class _GoogleSignInDialogWidgetState extends State<GoogleSignInDialogWidget>
    with TickerProviderStateMixin {
  late GoogleSignInDialogModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 100.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 440.ms,
          begin: -2.0,
          end: 2.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoogleSignInDialogModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
      height: 367.0,
      constraints: BoxConstraints(
        maxWidth: 400.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, -0.4),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -0.7),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 16.0, 125.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.2),
                      child: InkWell(
                        onTap: () async {
                          context.safePop();
                        },
                        child: Text(
                          'CANCEL',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF707070),
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional(0.050000000000000044, 0.0),
              children: [
                if (valueOrDefault<bool>(
                      FFAppState().appToken == null ||
                          FFAppState().appToken == '',
                      false,
                    ) ||
                    (_model.tapped == false) ||
                    (_model.tapped == null))
                  InkWell(
                    onTap: () async {
                      setState(() {
                        _model.tapped = true;
                      });
                      if (animationsMap['containerOnActionTriggerAnimation'] !=
                          null) {
                        animationsMap['containerOnActionTriggerAnimation']!
                            .controller
                          ..reset()
                          ..repeat(reverse: true);
                      }
                      _model.authenticationAccessToken =
                          await actions.socialLogin();
                      if (_model.authenticationAccessToken == null ||
                          _model.authenticationAccessToken == '') {
                        setState(() {
                          _model.tapped = false;
                        });
                        if (animationsMap[
                                'containerOnActionTriggerAnimation'] !=
                            null) {
                          animationsMap['containerOnActionTriggerAnimation']!
                              .controller
                              .stop();
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Failed To Get Access Token',
                              style: TextStyle(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).customColor4,
                          ),
                        );
                      } else {
                        _model.loginApiResponse =
                            await DroidConKeAPIGroup.socialLoginCall.call(
                          accessToken: _model.authenticationAccessToken,
                        );
                        if ((_model.loginApiResponse?.succeeded ?? true)) {
                          setState(() {
                            FFAppState().appToken = getJsonField(
                              (_model.loginApiResponse?.jsonBody ?? ''),
                              r'''$.token''',
                            ).toString();
                          });
                          setState(() {
                            FFAppState().user = getJsonField(
                              (_model.loginApiResponse?.jsonBody ?? ''),
                              r'''$.user''',
                            );
                          });
                          setState(() {
                            _model.tapped = true;
                          });
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .stop();
                          }

                          context.goNamed('home_page_logged_in');
                        } else {
                          setState(() {
                            _model.tapped = false;
                          });
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            animationsMap['containerOnActionTriggerAnimation']!
                                .controller
                                .stop();
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Failed  To Get User Data',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).customColor4,
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Failed To Get Access Token',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).customColor4,
                            ),
                          );
                        }
                      }

                      setState(() {});
                    },
                    child: Container(
                      width: 208.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xB3E0DFDF),
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/unnamed.png',
                              width: 40.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Sign in with Google',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF191D1D),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 20),
                  curve: Curves.easeInOut,
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation']!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

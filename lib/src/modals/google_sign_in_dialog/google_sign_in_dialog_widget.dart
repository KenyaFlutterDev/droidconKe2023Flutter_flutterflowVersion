import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
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

class _GoogleSignInDialogWidgetState extends State<GoogleSignInDialogWidget> {
  late GoogleSignInDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoogleSignInDialogModel());
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
      width: 315.0,
      height: 367.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    context.safePop();
                  },
                  child: Text(
                    'CANCEL',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          color: Color(0xFF707070),
                        ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional(0.5, 0.8500000000000001),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 126.0, 0.0, 0.0),
                child: InkWell(
                  onTap: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    final user = await signInWithGoogle(context);
                    if (user == null) {
                      return;
                    }
                    setState(() {
                      FFAppState().testingToken = '';
                    });

                    context.goNamedAuth('home_page_logged_in', mounted);
                  },
                  child: Image.asset(
                    'assets/images/btn_google_dark_normal_ios.png',
                    width: 208.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
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
          FFButtonWidget(
            onPressed: () async {
              _model.accessTokenCopy = await actions.socialLogin();

              setState(() {});
            },
            text: 'Button',
            options: FFButtonOptions(
              width: 130.0,
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Text(
            FFAppState().testingToken,
            style: FlutterFlowTheme.of(context).bodyText1,
          ),
        ],
      ),
    );
  }
}

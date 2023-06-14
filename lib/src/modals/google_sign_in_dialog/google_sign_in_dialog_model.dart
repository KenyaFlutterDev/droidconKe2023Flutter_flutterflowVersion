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

class GoogleSignInDialogModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool tapped = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - socialLogin] action in Container widget.
  String? authenticationAccessToken;
  // Stores action output result for [Backend Call - API (Social Login)] action in Container widget.
  ApiCallResponse? loginApiResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

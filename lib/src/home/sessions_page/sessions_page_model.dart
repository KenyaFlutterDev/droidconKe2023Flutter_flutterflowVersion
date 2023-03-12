import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/session_header/session_header_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SessionsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for session_header component.
  late SessionHeaderModel sessionHeaderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sessionHeaderModel = createModel(context, () => SessionHeaderModel());
  }

  void dispose() {
    sessionHeaderModel.dispose();
  }

  /// Additional helper methods are added here.

}

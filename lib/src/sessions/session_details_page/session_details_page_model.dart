import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/src/widgets/twitter_handle_component/twitter_handle_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SessionDetailsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for twitter_handle_component component.
  late TwitterHandleComponentModel twitterHandleComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    twitterHandleComponentModel =
        createModel(context, () => TwitterHandleComponentModel());
  }

  void dispose() {
    twitterHandleComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}

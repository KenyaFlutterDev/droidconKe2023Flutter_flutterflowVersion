import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/src/widgets/twitter_handle_component/twitter_handle_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SessionDetailsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for twitter_handle_component component.
  late TwitterHandleComponentModel twitterHandleComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    twitterHandleComponentModel =
        createModel(context, () => TwitterHandleComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textController?.dispose();
    twitterHandleComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/outlined_icon_button/outlined_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TwitterHandleComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for outlinedIconButton component.
  late OutlinedIconButtonModel outlinedIconButtonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    outlinedIconButtonModel =
        createModel(context, () => OutlinedIconButtonModel());
  }

  void dispose() {
    outlinedIconButtonModel.dispose();
  }

  /// Additional helper methods are added here.

}

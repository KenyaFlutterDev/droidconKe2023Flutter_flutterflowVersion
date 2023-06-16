import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/organized_by_panel/organized_by_panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrganisedbyComponentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for organizedByPanel component.
  late OrganizedByPanelModel organizedByPanelModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    organizedByPanelModel = createModel(context, () => OrganizedByPanelModel());
  }

  void dispose() {
    organizedByPanelModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

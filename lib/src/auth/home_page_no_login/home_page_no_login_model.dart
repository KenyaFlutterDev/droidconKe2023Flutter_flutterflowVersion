import '/components/organized_by_panel_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageNoLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for organizedByPanel component.
  late OrganizedByPanelModel organizedByPanelModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    organizedByPanelModel = createModel(context, () => OrganizedByPanelModel());
  }

  void dispose() {
    organizedByPanelModel.dispose();
  }

  /// Additional helper methods are added here.

}

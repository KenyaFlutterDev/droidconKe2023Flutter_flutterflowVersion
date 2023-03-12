import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/sesion_header_component/sesion_header_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SessionHeaderModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for sesion_header_component component.
  late SesionHeaderComponentModel sesionHeaderComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sesionHeaderComponentModel =
        createModel(context, () => SesionHeaderComponentModel());
  }

  void dispose() {
    sesionHeaderComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}

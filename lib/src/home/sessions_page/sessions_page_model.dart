import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/sesion_header_component/sesion_header_component_widget.dart';
import '/src/widgets/session_date_component/session_date_component_widget.dart';
import 'package:flutter/material.dart';

class SessionsPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool mySessions = false;

  ///  State fields for stateful widgets in this page.

  // Model for sesion_header_component component.
  late SesionHeaderComponentModel sesionHeaderComponentModel;
  // Model for session_date_component component.
  late SessionDateComponentModel sessionDateComponentModel1;
  // Model for session_date_component component.
  late SessionDateComponentModel sessionDateComponentModel2;
  // Model for session_date_component component.
  late SessionDateComponentModel sessionDateComponentModel3;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sesionHeaderComponentModel =
        createModel(context, () => SesionHeaderComponentModel());
    sessionDateComponentModel1 =
        createModel(context, () => SessionDateComponentModel());
    sessionDateComponentModel2 =
        createModel(context, () => SessionDateComponentModel());
    sessionDateComponentModel3 =
        createModel(context, () => SessionDateComponentModel());
  }

  void dispose() {
    sesionHeaderComponentModel.dispose();
    sessionDateComponentModel1.dispose();
    sessionDateComponentModel2.dispose();
    sessionDateComponentModel3.dispose();
  }

  /// Additional helper methods are added here.

}

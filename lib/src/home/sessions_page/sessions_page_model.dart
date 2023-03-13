import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/session_date_component/session_date_component_widget.dart';
import '/src/widgets/session_header/session_header_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SessionsPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool mySessions = false;

  ///  State fields for stateful widgets in this page.

  // Model for session_header component.
  late SessionHeaderModel sessionHeaderModel;
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
    sessionHeaderModel = createModel(context, () => SessionHeaderModel());
    sessionDateComponentModel1 =
        createModel(context, () => SessionDateComponentModel());
    sessionDateComponentModel2 =
        createModel(context, () => SessionDateComponentModel());
    sessionDateComponentModel3 =
        createModel(context, () => SessionDateComponentModel());
  }

  void dispose() {
    sessionHeaderModel.dispose();
    sessionDateComponentModel1.dispose();
    sessionDateComponentModel2.dispose();
    sessionDateComponentModel3.dispose();
  }

  /// Additional helper methods are added here.

}

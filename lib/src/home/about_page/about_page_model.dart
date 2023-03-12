import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/organizers_component/organizers_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header_component component.
  late HeaderComponentModel headerComponentModel;
  // Model for organisedby_component component.
  late OrganisedbyComponentModel organisedbyComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerComponentModel = createModel(context, () => HeaderComponentModel());
    organisedbyComponentModel =
        createModel(context, () => OrganisedbyComponentModel());
  }

  void dispose() {
    headerComponentModel.dispose();
    organisedbyComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}

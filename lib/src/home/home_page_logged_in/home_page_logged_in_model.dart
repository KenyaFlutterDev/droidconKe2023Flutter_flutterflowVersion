import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/sponsors_component/sponsors_component_widget.dart';
import 'package:flutter/material.dart';

class HomePageLoggedInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header_component component.
  late HeaderComponentModel headerComponentModel;
  // Model for sponsors_component component.
  late SponsorsComponentModel sponsorsComponentModel;
  // Model for organisedby_component component.
  late OrganisedbyComponentModel organisedbyComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerComponentModel = createModel(context, () => HeaderComponentModel());
    sponsorsComponentModel =
        createModel(context, () => SponsorsComponentModel());
    organisedbyComponentModel =
        createModel(context, () => OrganisedbyComponentModel());
  }

  void dispose() {
    headerComponentModel.dispose();
    sponsorsComponentModel.dispose();
    organisedbyComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}

import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import 'package:flutter/material.dart';

class FeedsPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header_component component.
  late HeaderComponentModel headerComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerComponentModel = createModel(context, () => HeaderComponentModel());
  }

  void dispose() {
    headerComponentModel.dispose();
  }

  /// Additional helper methods are added here.

}

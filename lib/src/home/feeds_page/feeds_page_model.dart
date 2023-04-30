import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/feeds_cards_component/feeds_cards_component_widget.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/sessions_list_component/sessions_list_component_widget.dart';
import '/src/widgets/speakers_component/speakers_component_widget.dart';
import '/src/widgets/sponsors_component/sponsors_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HomePageLoggedInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header_component component.
  late HeaderComponentModel headerComponentModel;
  // Model for sessionsListComponent component.
  late SessionsListComponentModel sessionsListComponentModel;
  // State field(s) for ListView widget.
  PagingController<ApiPagingParams, dynamic>? pagingController;
  // Model for sponsors_component component.
  late SponsorsComponentModel sponsorsComponentModel;
  // Model for organisedby_component component.
  late OrganisedbyComponentModel organisedbyComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerComponentModel = createModel(context, () => HeaderComponentModel());
    sessionsListComponentModel =
        createModel(context, () => SessionsListComponentModel());
    sponsorsComponentModel =
        createModel(context, () => SponsorsComponentModel());
    organisedbyComponentModel =
        createModel(context, () => OrganisedbyComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerComponentModel.dispose();
    sessionsListComponentModel.dispose();
    sponsorsComponentModel.dispose();
    organisedbyComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

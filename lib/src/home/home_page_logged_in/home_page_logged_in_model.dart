import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/sessions_card_component/sessions_card_component_widget.dart';
import '/src/widgets/speakers_component/speakers_component_widget.dart';
import '/src/widgets/sponsors_component/sponsors_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/request_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class HomePageLoggedInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for header_component component.
  late HeaderComponentModel headerComponentModel;
  // State field(s) for ListView widget.
  PagingController<ApiPagingParams, dynamic>? pagingController;
  // Model for sponsors_component component.
  late SponsorsComponentModel sponsorsComponentModel;
  // Model for organisedby_component component.
  late OrganisedbyComponentModel organisedbyComponentModel;

  /// Query cache managers for this widget.

  final _speakersListHomePageManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> speakersListHomePage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _speakersListHomePageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSpeakersListHomePageCache() => _speakersListHomePageManager.clear();
  void clearSpeakersListHomePageCacheKey(String? uniqueKey) =>
      _speakersListHomePageManager.clearRequest(uniqueKey);

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

    /// Dispose query cache managers for this widget.

    clearSpeakersListHomePageCache();
  }

  /// Additional helper methods are added here.

}

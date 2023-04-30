import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/sessions_card_component/sessions_card_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'sessions_list_component_model.dart';
export 'sessions_list_component_model.dart';

class SessionsListComponentWidget extends StatefulWidget {
  const SessionsListComponentWidget({Key? key}) : super(key: key);

  @override
  _SessionsListComponentWidgetState createState() =>
      _SessionsListComponentWidgetState();
}

class _SessionsListComponentWidgetState
    extends State<SessionsListComponentWidget> {
  late SessionsListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionsListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 215.2,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: PagedListView<ApiPagingParams, dynamic>(
        pagingController: () {
          if (_model.pagingController != null) {
            return _model.pagingController!;
          }

          _model.pagingController = PagingController(
            firstPageKey: ApiPagingParams(
              nextPageNumber: 0,
              numItems: 0,
              lastResponse: null,
            ),
          );
          _model.pagingController!.addPageRequestListener((nextPageMarker) {
            DroidConKeAPIGroup.eventSessionsCall
                .call(
              perPage: 25,
              page: nextPageMarker.nextPageNumber,
            )
                .then((listViewEventSessionsResponse) {
              final pageItems =
                  (DroidConKeAPIGroup.eventSessionsCall.sessionData(
                            listViewEventSessionsResponse.jsonBody,
                          )! ??
                          [])
                      .toList() as List;
              final newNumItems = nextPageMarker.numItems + pageItems.length;
              _model.pagingController!.appendPage(
                pageItems,
                (pageItems.length > 0)
                    ? ApiPagingParams(
                        nextPageNumber: nextPageMarker.nextPageNumber + 1,
                        numItems: newNumItems,
                        lastResponse: listViewEventSessionsResponse,
                      )
                    : null,
              );
            });
          });
          return _model.pagingController!;
        }(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        reverse: false,
        scrollDirection: Axis.horizontal,
        builderDelegate: PagedChildBuilderDelegate<dynamic>(
          // Customize what your widget looks like when it's loading the first page.
          firstPageProgressIndicatorBuilder: (_) => Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitDoubleBounce(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          ),

          itemBuilder: (context, _, sessionaListIndex) {
            final sessionaListItem =
                _model.pagingController!.itemList![sessionaListIndex];
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  'session_details_page',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 2000),
                    ),
                  },
                );
              },
              child: SessionsCardComponentWidget(
                key: Key(
                    'Keylyp_${sessionaListIndex}_of_${_model.pagingController!.itemList!.length}'),
                sessionsDetails: getJsonField(
                  sessionaListItem,
                  r'''$''',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/all_speakers_component/all_speakers_component_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_speakers_page_model.dart';
export 'all_speakers_page_model.dart';

class AllSpeakersPageWidget extends StatefulWidget {
  const AllSpeakersPageWidget({Key? key}) : super(key: key);

  @override
  _AllSpeakersPageWidgetState createState() => _AllSpeakersPageWidgetState();
}

class _AllSpeakersPageWidgetState extends State<AllSpeakersPageWidget> {
  late AllSpeakersPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllSpeakersPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: Color(0xFF20201E),
                              size: 27.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  21.78, 0.0, 0.0, 0.0),
                              child: Text(
                                'Speakers',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF20201E),
                                      fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 36.38, 20.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: _model
                        .allSpeakers(
                      requestFn: () => DroidConKeAPIGroup.speakersCall.call(
                        perPage: 50,
                      ),
                    )
                        .then((result) {
                      _model.apiRequestCompleted = true;
                      return result;
                    }),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitDoubleBounce(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      final gridViewSpeakersResponse = snapshot.data!;
                      return Builder(
                        builder: (context) {
                          final allSpeakers = DroidConKeAPIGroup.speakersCall
                              .speakersData(
                                gridViewSpeakersResponse.jsonBody,
                              )
                              .toList();
                          if (allSpeakers.isEmpty) {
                            return Center(
                              child: Image.asset(
                                'assets/images/Group_753.png',
                              ),
                            );
                          }
                          return RefreshIndicator(
                            onRefresh: () async {
                              setState(() {
                                _model.clearAllSpeakersCache();
                                _model.apiRequestCompleted = false;
                              });
                              await _model.waitForApiRequestCompleted();
                            },
                            child: GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 0.61,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: allSpeakers.length,
                              itemBuilder: (context, allSpeakersIndex) {
                                final allSpeakersItem =
                                    allSpeakers[allSpeakersIndex];
                                return AllSpeakersComponentWidget(
                                  key: Key(
                                      'Key8uh_${allSpeakersIndex}_of_${allSpeakers.length}'),
                                  speaker: getJsonField(
                                    allSpeakersItem,
                                    r'''$''',
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

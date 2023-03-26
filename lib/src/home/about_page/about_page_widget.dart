import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/header_component/header_component_widget.dart';
import '/src/widgets/organisedby_component/organisedby_component_widget.dart';
import '/src/widgets/organizers_component/organizers_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'about_page_model.dart';
export 'about_page_model.dart';

class AboutPageWidget extends StatefulWidget {
  const AboutPageWidget({Key? key}) : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  late AboutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                    child: wrapWithModel(
                      model: _model.headerComponentModel,
                      updateCallback: () => setState(() {}),
                      child: HeaderComponentWidget(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 235.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          'assets/images/Droidcon-6283.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'About',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Droidcon is a global conference focused on the engineering of Android applications. Droidcon provides a forum for developers to network with other developers, share techniques, announce apps and products, and to learn and teach. This two-day developer focused gathering will be held in Nairobi Kenya on August 6th to 8th 2020 and will be the largest of its kind in Africa. It will have workshops and codelabs focused on the building of Android applications and will give participants an excellent chance to learn about the local Android development ecosystem, opportunities and services as well as meet the engineers and companies who work on them.',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Organizing Team',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final gridlist = List.generate(
                                  random_data.randomInteger(0, 22),
                                  (index) => random_data.randomInteger(22, 23))
                              .toList();
                          return GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 0.0,
                              mainAxisSpacing: 0.0,
                              childAspectRatio: 0.8,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: gridlist.length,
                            itemBuilder: (context, gridlistIndex) {
                              final gridlistItem = gridlist[gridlistIndex];
                              return OrganizersComponentWidget(
                                key: Key(
                                    'Keyd2j_${gridlistIndex}_of_${gridlist.length}'),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final organizersList = List.generate(
                                  random_data.randomInteger(0, 22),
                                  (index) => random_data.randomInteger(21, 22))
                              .toList();
                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(organizersList.length,
                                (organizersListIndex) {
                              final organizersListItem =
                                  organizersList[organizersListIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 39.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ),
                                    child: OrganizersComponentWidget(
                                      key: Key(
                                          'Key774_${organizersListIndex}_of_${organizersList.length}'),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  wrapWithModel(
                    model: _model.organisedbyComponentModel,
                    updateCallback: () => setState(() {}),
                    child: OrganisedbyComponentWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

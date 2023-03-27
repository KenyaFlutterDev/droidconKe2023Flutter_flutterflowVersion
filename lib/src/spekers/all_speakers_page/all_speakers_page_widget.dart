import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/all_speakers_component/all_speakers_component_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
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
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllSpeakersPageModel());
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
                                    .bodyText1
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
                  child: Builder(
                    builder: (context) {
                      final rfhrh = List.generate(
                              random_data.randomInteger(0, 20),
                              (index) => random_data.randomInteger(15, 20))
                          .toList()
                          .take(20)
                          .toList();
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 0.61,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: rfhrh.length,
                        itemBuilder: (context, rfhrhIndex) {
                          final rfhrhItem = rfhrh[rfhrhIndex];
                          return AllSpeakersComponentWidget(
                            key: Key('Key8uh_${rfhrhIndex}_of_${rfhrh.length}'),
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

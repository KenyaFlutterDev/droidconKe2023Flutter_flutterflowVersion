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
import 'feeds_page_model.dart';
export 'feeds_page_model.dart';

class FeedsPageWidget extends StatefulWidget {
  const FeedsPageWidget({Key? key}) : super(key: key);

  @override
  _FeedsPageWidgetState createState() => _FeedsPageWidgetState();
}

class _FeedsPageWidgetState extends State<FeedsPageWidget> {
  late FeedsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedsPageModel());

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                  child: wrapWithModel(
                    model: _model.headerComponentModel,
                    updateCallback: () => setState(() {}),
                    child: HeaderComponentWidget(),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      final feedsList = List.generate(
                              random_data.randomInteger(6, 7),
                              (index) => random_data.randomInteger(0, 10))
                          .toList()
                          .take(7)
                          .toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: feedsList.length,
                        itemBuilder: (context, feedsListIndex) {
                          final feedsListItem = feedsList[feedsListIndex];
                          return FeedsCardsComponentWidget(
                            key: Key(
                                'Key3cz_${feedsListIndex}_of_${feedsList.length}'),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

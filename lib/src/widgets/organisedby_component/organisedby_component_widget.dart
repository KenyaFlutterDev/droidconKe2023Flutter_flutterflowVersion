import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/organized_by_panel/organized_by_panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'organisedby_component_model.dart';
export 'organisedby_component_model.dart';

class OrganisedbyComponentWidget extends StatefulWidget {
  const OrganisedbyComponentWidget({Key? key}) : super(key: key);

  @override
  _OrganisedbyComponentWidgetState createState() =>
      _OrganisedbyComponentWidgetState();
}

class _OrganisedbyComponentWidgetState
    extends State<OrganisedbyComponentWidget> {
  late OrganisedbyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrganisedbyComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 29.79, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 228.0,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: wrapWithModel(
          model: _model.organizedByPanelModel,
          updateCallback: () => setState(() {}),
          child: OrganizedByPanelWidget(),
        ),
      ),
    );
  }
}

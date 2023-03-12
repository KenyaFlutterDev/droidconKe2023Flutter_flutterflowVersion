import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/sesion_header_component/sesion_header_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'session_header_model.dart';
export 'session_header_model.dart';

class SessionHeaderWidget extends StatefulWidget {
  const SessionHeaderWidget({Key? key}) : super(key: key);

  @override
  _SessionHeaderWidgetState createState() => _SessionHeaderWidgetState();
}

class _SessionHeaderWidgetState extends State<SessionHeaderWidget> {
  late SessionHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionHeaderModel());
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
      decoration: BoxDecoration(),
      child: wrapWithModel(
        model: _model.sesionHeaderComponentModel,
        updateCallback: () => setState(() {}),
        child: SesionHeaderComponentWidget(),
      ),
    );
  }
}

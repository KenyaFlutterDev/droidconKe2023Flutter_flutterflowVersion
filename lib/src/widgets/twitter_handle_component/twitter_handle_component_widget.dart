import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/widgets/outlined_icon_button/outlined_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'twitter_handle_component_model.dart';
export 'twitter_handle_component_model.dart';

class TwitterHandleComponentWidget extends StatefulWidget {
  const TwitterHandleComponentWidget({Key? key}) : super(key: key);

  @override
  _TwitterHandleComponentWidgetState createState() =>
      _TwitterHandleComponentWidgetState();
}

class _TwitterHandleComponentWidgetState
    extends State<TwitterHandleComponentWidget> {
  late TwitterHandleComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TwitterHandleComponentModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 54.0, 0.0),
            child: Text(
              'Twitter Handle',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF20201E),
                  ),
            ),
          ),
          Expanded(
            child: wrapWithModel(
              model: _model.outlinedIconButtonModel,
              updateCallback: () => setState(() {}),
              child: OutlinedIconButtonWidget(
                twitterHandle: 'muli_eriq',
                buttonHeight: 38.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

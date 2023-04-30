import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'outlined_icon_button_model.dart';
export 'outlined_icon_button_model.dart';

class OutlinedIconButtonWidget extends StatefulWidget {
  const OutlinedIconButtonWidget({
    Key? key,
    String? twitterHandle,
    this.buttonHeight,
  })  : this.twitterHandle = twitterHandle ?? 'muli_eriq',
        super(key: key);

  final String twitterHandle;
  final double? buttonHeight;

  @override
  _OutlinedIconButtonWidgetState createState() =>
      _OutlinedIconButtonWidgetState();
}

class _OutlinedIconButtonWidgetState extends State<OutlinedIconButtonWidget> {
  late OutlinedIconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OutlinedIconButtonModel());

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
      width: 200.0,
      height: widget.buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xFF000CEB),
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.twitter,
            color: Color(0xFF000CEB),
            size: 20.0,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.64, 0.0, 0.0, 0.0),
            child: Text(
              widget.twitterHandle,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF000CEB),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

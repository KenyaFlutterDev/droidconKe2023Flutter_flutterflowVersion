import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/src/modals/filter_component/filter_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sesion_header_component_model.dart';
export 'sesion_header_component_model.dart';

class SesionHeaderComponentWidget extends StatefulWidget {
  const SesionHeaderComponentWidget({Key? key}) : super(key: key);

  @override
  _SesionHeaderComponentWidgetState createState() =>
      _SesionHeaderComponentWidgetState();
}

class _SesionHeaderComponentWidgetState
    extends State<SesionHeaderComponentWidget> {
  late SesionHeaderComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SesionHeaderComponentModel());

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
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/Group_363.png',
            width: 137.0,
            height: 25.5,
            fit: BoxFit.contain,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 17.0, 0.0),
                child: Image.asset(
                  'assets/images/listalt.png',
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              if (FFAppState().sessionListToggle == true)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().sessionListToggle = false;
                    });
                  },
                  child: Image.asset(
                    'assets/images/view-agenda.png',
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                  ),
                ),
              if (FFAppState().sessionListToggle == false)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().sessionListToggle = true;
                    });
                  },
                  child: Image.asset(
                    'assets/images/view-agenda-gray.png',
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 127.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: Color(0x00000000),
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: FilterComponentWidget(),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Filter',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xFF000CEB),
                              fontSize: 18.0,
                            ),
                      ),
                      Image.asset(
                        'assets/images/filter.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_component_model.dart';
export 'header_component_model.dart';

class HeaderComponentWidget extends StatefulWidget {
  const HeaderComponentWidget({Key? key}) : super(key: key);

  @override
  _HeaderComponentWidgetState createState() => _HeaderComponentWidgetState();
}

class _HeaderComponentWidgetState extends State<HeaderComponentWidget> {
  late HeaderComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: Container(
                width: 127.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFF9BEFE6),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.tag_faces_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 12.0,
                    ),
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                          ),
                    ),
                    Image.asset(
                      'assets/images/Layer_2.png',
                      width: 12.0,
                      height: 12.3,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 30.0,
              height: 30.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/IMG_5630.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

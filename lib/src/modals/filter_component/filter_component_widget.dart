import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_component_model.dart';
export 'filter_component_model.dart';

class FilterComponentWidget extends StatefulWidget {
  const FilterComponentWidget({Key? key}) : super(key: key);

  @override
  _FilterComponentWidgetState createState() => _FilterComponentWidgetState();
}

class _FilterComponentWidgetState extends State<FilterComponentWidget> {
  late FilterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterComponentModel());
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
      width: 412.0,
      height: 685.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F8),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 38.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Filter',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
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
                  InkWell(
                    onTap: () async {
                      context.safePop();
                    },
                    child: Text(
                      'CANCEL',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Color(0xFF707070),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 38.0, 0.0, 11.0),
                child: Text(
                  'Level',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 37.0,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F8),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(0.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Beginner',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF00E2C3),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Intermediate',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Text(
                          'Expert',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 11.0),
                child: Text(
                  'Topic',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 37.0,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F8),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(0.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'UI UX Design',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Backend',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Text(
                          'API\'s',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 37.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(0.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Flutter',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Android',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(12.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.05),
                          child: Text(
                            'React Native',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 11.0),
                child: Text(
                  'Rooms',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 37.0,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F8),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(0.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Room 1',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Room 2',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Text(
                          'Room 3',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 11.0),
                child: Text(
                  'Session type',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 37.0,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F8),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(12.0),
                          topRight: Radius.circular(0.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Keynote',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Codelab',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F8),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(12.0),
                        ),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.05),
                        child: Text(
                          'Session',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 37.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(0.0),
                          ),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Lightning talk',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Panel Discussion',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 13.0,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 46.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'FILTER',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF000CEB),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFF6F6F8),
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

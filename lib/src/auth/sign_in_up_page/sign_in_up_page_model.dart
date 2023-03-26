import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class SignInUpPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username widget.
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    usernameController?.dispose();
    emailAddressController?.dispose();
    passwordController1?.dispose();
    passwordController2?.dispose();
  }

  /// Additional helper methods are added here.

}

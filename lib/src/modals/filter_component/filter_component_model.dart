import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterComponentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  List<String> tappedItem = [];
  void addToTappedItem(String item) => tappedItem.add(item);
  void removeFromTappedItem(String item) => tappedItem.remove(item);
  void removeAtIndexFromTappedItem(int index) => tappedItem.removeAt(index);
  void updateTappedItemAtIndex(int index, Function(String) updateFn) =>
      tappedItem[index] = updateFn(tappedItem[index]);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

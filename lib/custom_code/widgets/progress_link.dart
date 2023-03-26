// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ProgressLink extends StatefulWidget {
  const ProgressLink({
    Key? key,
    this.width,
    this.height,
    required this.index,
    required this.images,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int index;
  final List<String> images;

  @override
  _ProgressLinkState createState() => _ProgressLinkState();
}

class _ProgressLinkState extends State<ProgressLink> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.index % 2 == 0 ? widget.images[0] : widget.images[1],
      height: widget.height,
      fit: BoxFit.cover,
    );
  }
}

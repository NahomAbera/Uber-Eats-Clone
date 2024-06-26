import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for homepage

  String? restaurantFilter = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputSearch widget.
  FocusNode? inputSearchFocusNode;
  TextEditingController? inputSearchTextController;
  String? Function(BuildContext, String?)? inputSearchTextControllerValidator;
  List<RestaurantsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputSearchFocusNode?.dispose();
    inputSearchTextController?.dispose();
  }
}

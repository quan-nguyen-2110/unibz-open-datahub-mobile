import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_theme.dart';

class MenuWidget extends StatefulWidget {
  final TabController? tabBarController;

  const MenuWidget({super.key, this.tabBarController});

  @override
  // ignore: library_private_types_in_public_api
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 90.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(0.0, -2.0),
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        border: Border.all(color: FlutterFlowTheme.of(context).secondaryText),
      ),
      child: TabBar(
        labelColor: FlutterFlowTheme.of(context).primary,
        unselectedLabelColor: FlutterFlowTheme.of(context).primaryBackground,
        labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
          font: GoogleFonts.readexPro(
            fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
          ),
          letterSpacing: 0.0,
          fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
        ),
        unselectedLabelStyle: FlutterFlowTheme.of(context).titleMedium.override(
          font: GoogleFonts.readexPro(
            fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
            fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
          ),
          letterSpacing: 0.0,
          fontWeight: FlutterFlowTheme.of(context).titleMedium.fontWeight,
          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
        ),
        indicatorColor: FlutterFlowTheme.of(context).primary,
        tabs: [
          Tab(icon: Icon(Icons.home_outlined, size: 30.0), text: 'Home'),
          Tab(icon: Icon(Icons.event, size: 30.0), text: 'Events'),
          Tab(icon: Icon(Icons.traffic, size: 30.0), text: 'Traffic'),
          Tab(
            icon: Icon(Icons.water_drop_outlined, size: 30.0),
            text: 'Weather',
          ),
          Tab(icon: Icon(Icons.person_outline, size: 30.0), text: 'Profile'),
        ],
        controller: widget.tabBarController,
        onTap: (i) async {
          [
            () async {},
            () async {},
            () async {},
            () async {},
            () async {},
          ][i]();
        },
      ),
    );
  }
}

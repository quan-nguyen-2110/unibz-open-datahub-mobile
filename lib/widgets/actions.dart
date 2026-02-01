import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';

import 'package:open_data_hub_mobile_app/open_data_hub/events.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsWidget extends StatefulWidget {
  const ActionsWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ActionsWidgetState createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    fetchEventsData();
  }

  void fetchEventsData() async {
    EventService eventService = EventService();
    var events = await eventService.fetchEvents();
  }

  GestureDetector buildActions(
    String text,
    IconData icon,
    int index,
    Color iconColor,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          if (selectedIndex == index) {
            selectedIndex = -1; // deselect
          } else {
            selectedIndex = index;
            onTap();
          }
        });
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.2,
        height: 80.0,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? FlutterFlowTheme.of(context).secondaryText
              : FlutterFlowTheme.of(context).primaryText,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryText,
            width: 2.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: iconColor, size: 40.0),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 10.0
                      : 19.0,
                  0.0,
                ),
                0.0,
                0.0,
              ),
              child: Text(
                text,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.readexPro(
                    fontWeight: FlutterFlowTheme.of(
                      context,
                    ).bodyMedium.fontWeight,
                    fontStyle: FlutterFlowTheme.of(
                      context,
                    ).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(
                    context,
                  ).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildActions(
          'Weather',
          Icons.cloud,
          1,
          FlutterFlowTheme.of(context).warning,
          () {},
        ),
        buildActions(
          'Traffic',
          Icons.directions_car,
          2,
          FlutterFlowTheme.of(context).primary,
          fetchEventsData,
        ),
        buildActions(
          'Ski',
          Icons.downhill_skiing,
          3,
          FlutterFlowTheme.of(context).secondary,
          () {},
        ),
        buildActions(
          'For You',
          Icons.auto_awesome_sharp,
          4,
          Color(0xFF2EE407),
          () {},
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class TrafficAndTransitWidget extends StatefulWidget {
  const TrafficAndTransitWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TrafficAndTransitWidgetState createState() =>
      _TrafficAndTransitWidgetState();
}

class _TrafficAndTransitWidgetState extends State<TrafficAndTransitWidget> {
  @override
  void initState() {
    super.initState();
  }

  Container buildTrafficAndTransit(
    String title,
    String description,
    IconData icon,
    Color iconColor,
    Color bgIconColor,
    String timeDesription,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        border: Border.all(color: FlutterFlowTheme.of(context).secondaryText),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: bgIconColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Icon(icon, color: iconColor, size: 24.0),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 15.0
                        : 15.0,
                    0.0,
                  ),
                  0.0,
                  0.0,
                  0.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: FlutterFlowTheme.of(context).bodyMedium
                              .override(
                                font: GoogleFonts.readexPro(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.fontStyle,
                                ),
                                color: FlutterFlowTheme.of(
                                  context,
                                ).primaryBackground,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodyMedium.fontStyle,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.clock,
                              color: FlutterFlowTheme.of(
                                context,
                              ).primaryBackground,
                              size: 14.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 5.0
                                      : 5.0,
                                  0.0,
                                ),
                                0.0,
                                0.0,
                                0.0,
                              ),
                              child: Text(
                                timeDesription,
                                style: FlutterFlowTheme.of(context).bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(
                                          context,
                                        ).bodyMedium.fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).primaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.fontWeight,
                                      fontStyle: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? 5.0
                              : 5.0,
                          0.0,
                        ),
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        description,
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
                          fontStyle: FlutterFlowTheme.of(
                            context,
                          ).bodyMedium.fontStyle,
                        ),
                      ),
                    ),
                  ],
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Traffic & Transit',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 20.0
                      : 20.0,
                  0.0,
                ),
                0.0,
                0.0,
              ),
              child: buildTrafficAndTransit(
                'A1 Highway - Heavy Traffic',
                'Expect 25 min delays near exit 12. Consider alternative routes',
                Icons.warning_amber,
                Color(0xFFFF0303),
                Color(0xFFF6757C),
                'Now',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 20.0
                      : 20.0,
                  0.0,
                ),
                0.0,
                0.0,
              ),
              child: buildTrafficAndTransit(
                'Last Metro: 23:45',
                'Line 3 to Central Station. First morning train at 05:30',
                Icons.directions_bus,
                Color(0xFF05E043),
                Color(0xFF4C9803),
                'In 4h',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 20.0
                      : 20.0,
                  0.0,
                ),
                0.0,
                0.0,
              ),
              child: buildTrafficAndTransit(
                'City Center Parking',
                'Only 12 spots remaining at Central Mall garage',
                Icons.local_parking,
                Color(0xFFEED360),
                Color(0xFF987C03),
                'Live',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

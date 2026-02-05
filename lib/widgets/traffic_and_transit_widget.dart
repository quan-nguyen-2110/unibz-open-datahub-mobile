import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_data_hub_mobile_app/open_data_hub/traffic.dart';

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
    String category,
    String timeDesription,
  ) {
    IconData icon;
    Color iconColor;
    Color bgIconColor;
    switch (category) {
      case 'accident':
        icon = Icons.car_crash_outlined;
        iconColor = const Color(0xFFFF0303);
        bgIconColor = const Color(0xFFF6757C);
        break;
      case 'traffic jam':
        icon = Icons.traffic_outlined;
        iconColor = const Color(0xFF05E043);
        bgIconColor = const Color(0xFF4C9803);
        break;
      case 'roadwork':
        icon = Icons.construction;
        iconColor = const Color(0xFFEED360);
        bgIconColor = const Color(0xFF987C03);
        break;
      default:
        icon = Icons.info;
        iconColor = Colors.grey;
        bgIconColor = Colors.grey.shade300;
    }

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
                        Flexible(
                          child: Text(
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
                                textAlign: TextAlign.justify,
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
    TrafficService trafficService = TrafficService();
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
        FutureBuilder<List<Traffic>>(
          future: trafficService.fetchTraffic(46.55, 11.75),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            final traffics = snapshot.data;
            if (traffics == null || traffics.isEmpty) {
              return const Text(
                'No traffic data available.',
                style: TextStyle(color: Colors.red),
              );
            }

            return Padding(
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
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  // color: Color(0xFF544C32),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 10.0
                        : 10.0,
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 10.0
                        : 10.0,
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 10.0
                        : 10.0,
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 10.0
                        : 10.0,
                  ),
                  child: SizedBox(
                    height: 400,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: traffics.map((traffic) {
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                            0.0,
                          ),
                          child: buildTrafficAndTransit(
                            traffic.title,
                            traffic.content,
                            traffic.category,
                            traffic.formatDates(),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

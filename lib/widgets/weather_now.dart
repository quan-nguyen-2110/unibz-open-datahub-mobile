import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_data_hub_mobile_app/open_data_hub/weathers.dart';
import 'package:google_fonts/google_fonts.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class WeatherNowWidget extends StatefulWidget {
  const WeatherNowWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherNowWidgetState createState() => _WeatherNowWidgetState();
}

class _WeatherNowWidgetState extends State<WeatherNowWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeatherService weatherService = WeatherService();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Weather Now',
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

        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
            0.0,
            valueOrDefault<double>(
              MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 20.0,
              0.0,
            ),
            0.0,
            0.0,
          ),
          child: FutureBuilder<Weather>(
            future: weatherService.fetchWeather(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }

              final weather = snapshot?.data!;

              return Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                child: (snapshot.hasError)
                    ? Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                        ),
                        child: Text(
                          'Error: ${snapshot.error}',
                          style: FlutterFlowTheme.of(
                            context,
                          ).bodyMedium.copyWith(color: Colors.red),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 20.0
                                : 20.0,
                            0.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 10.0
                                        : 10.0,
                                    0.0,
                                  ),
                                  0.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 10.0
                                        : 10.0,
                                    0.0,
                                  ),
                                  0.0,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.umbrella,
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).warning,
                                      size: 24.0,
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 10.0
                                                : 10.0,
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0,
                                        ),
                                        child: Text(
                                          'Rain expected at 6PM - Dont forget your umberlla!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                                color: FlutterFlowTheme.of(
                                                  context,
                                                ).warning,
                                                fontSize: 14.0,
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 10.0
                                      : 10.0,
                                  0.0,
                                ),
                                0.0,
                                0.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '22',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                                  fontSize: 70.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(
                                                              context,
                                                            ).width <
                                                            kBreakpointSmall
                                                        ? 5.0
                                                        : 5.0,
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(
                                                              context,
                                                            ).width <
                                                            kBreakpointSmall
                                                        ? 10.0
                                                        : 10.0,
                                                    0.0,
                                                  ),
                                                ),
                                            child: Text(
                                              '*C',
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryBackground,
                                                    fontSize: 35.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Partly Sunny',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
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
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontWeight,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 80.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).accent2,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.sunny,
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).warning,
                                      size: 40.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 25.0
                                      : 25.0,
                                  0.0,
                                ),
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 15.0
                                      : 15.0,
                                  0.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.water_drop_outlined,
                                    color: FlutterFlowTheme.of(
                                      context,
                                    ).secondary,
                                    size: 24.0,
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
                                      '65 %',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
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
                                            fontSize: 16.0,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 20.0
                                            : 20.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                      0.0,
                                    ),
                                    child: Icon(
                                      Icons.air,
                                      color: FlutterFlowTheme.of(
                                        context,
                                      ).primary,
                                      size: 24.0,
                                    ),
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
                                      '12 km/h',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
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
                                            fontSize: 16.0,
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
                            Divider(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 15.0
                                      : 15.0,
                                  0.0,
                                ),
                                0.0,
                                0.0,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).accent1,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(
                                            context,
                                          ).primary,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.person_2,
                                        color: FlutterFlowTheme.of(
                                          context,
                                        ).primary,
                                        size: 17.0,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width <
                                                  kBreakpointSmall
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'AI Suggestion',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                    context,
                                                  ).secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    MediaQuery.sizeOf(
                                                              context,
                                                            ).width <
                                                            kBreakpointSmall
                                                        ? 5.0
                                                        : 5.0,
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Text(
                                              'Light jacket recommended. Temperature will drop to 15*C by evening.',
                                              style:
                                                  FlutterFlowTheme.of(
                                                    context,
                                                  ).bodyMedium.override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                context,
                                                              )
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryBackground,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).bodyMedium.fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
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
                          ],
                        ),
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}

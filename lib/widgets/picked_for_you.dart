import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_data_hub_mobile_app/flutter_flow/flutter_flow_widgets.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class PickedForYouWidget extends StatefulWidget {
  const PickedForYouWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PickedForYouWidgetState createState() => _PickedForYouWidgetState();
}

class _PickedForYouWidgetState extends State<PickedForYouWidget> {
  @override
  void initState() {
    super.initState();
  }

  Container buildPickedForYou(
    String imagePath,
    int percentMatch,
    double rating,
    String title,
    String subTitle1,
    String subTitle2,
    List<String> tags,
    double distanceKm,
    String waitTime,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: FlutterFlowTheme.of(context).secondaryText),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(imagePath).image,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
              Padding(
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
                  0.0,
                  0.0,
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.27,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                        ),
                        child: Icon(
                          Icons.circle,
                          color: Color(0xFF31D51F),
                          size: 12.0,
                        ),
                      ),
                      Text(
                        '$percentMatch% match',
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                  valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width < kBreakpointSmall
                        ? 300.0
                        : 300.0,
                    0.0,
                  ),
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
                  width: MediaQuery.sizeOf(context).width * 0.14,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width < kBreakpointSmall
                                ? 5.0
                                : 5.0,
                            0.0,
                          ),
                        ),
                        child: Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 12.0,
                        ),
                      ),
                      Text(
                        '$rating',
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 20.0
                    : 20.0,
                0.0,
              ),
              0.0,
              0.0,
            ),
            child: Text(
              title,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.readexPro(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall ? 5.0 : 5.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              0.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  subTitle1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight: FlutterFlowTheme.of(
                        context,
                      ).bodyMedium.fontWeight,
                      fontStyle: FlutterFlowTheme.of(
                        context,
                      ).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FlutterFlowTheme.of(
                      context,
                    ).bodyMedium.fontWeight,
                    fontStyle: FlutterFlowTheme.of(
                      context,
                    ).bodyMedium.fontStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.circle,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 10.0,
                  ),
                ),
                Text(
                  subTitle2,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.readexPro(
                      fontWeight: FlutterFlowTheme.of(
                        context,
                      ).bodyMedium.fontWeight,
                      fontStyle: FlutterFlowTheme.of(
                        context,
                      ).bodyMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryText,
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
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              0.0,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: tags.map<Widget>((tag) {
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      0.0,
                      valueOrDefault<double>(
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
                            ? 5.0
                            : 5.0,
                        0.0,
                      ),
                      0.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          tag,
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
                                fontSize: 13.0,
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
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(color: FlutterFlowTheme.of(context).alternate),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              0.0,
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 10.0
                    : 10.0,
                0.0,
              ),
              valueOrDefault<double>(
                MediaQuery.sizeOf(context).width < kBreakpointSmall
                    ? 20.0
                    : 20.0,
                0.0,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    Text(
                      '${distanceKm.toStringAsFixed(2)} km',
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? 10.0
                              : 10.0,
                          0.0,
                        ),
                        0.0,
                        0.0,
                        0.0,
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.clock,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width < kBreakpointSmall
                              ? 5.0
                              : 5.0,
                          0.0,
                        ),
                        0.0,
                        0.0,
                        0.0,
                      ),
                      child: Text(
                        waitTime,
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
                Icon(
                  Icons.arrow_forward_ios,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 20.0,
                ),
              ],
            ),
          ),
        ],
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
              'Picked for You',
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
                lineHeight: 3.0,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'See All',
              options: FFButtonOptions(
                height: 40.0,
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryText,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  font: GoogleFonts.readexPro(
                    fontWeight: FlutterFlowTheme.of(
                      context,
                    ).titleSmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(
                      context,
                    ).titleSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(
                    context,
                  ).titleSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
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
          child: buildPickedForYou(
            'assets/images/sushi-kakkoii.jpeg',
            94,
            4.8,
            'Sakura Sushi',
            'Japanese',
            'Fine Dining',
            List<String>.from([
              'Your Favorite Cuisine',
              'Quite Ambiance',
              'DateNight',
              'Highly Rated',
            ]),
            1.2,
            '20 mins wait',
          ),
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
          child: buildPickedForYou(
            'assets/images/jazz-in-the-park.jpg',
            87,
            4.9,
            'Jazz in the Park',
            'Live Music',
            'Central Park',
            List<String>.from([
              'Outdoor',
              'Music Lovers',
              'Free Entry',
              'Highly Rated',
              'Weekend Event',
            ]),
            0.8,
            'Starts 8 PM',
          ),
        ),
      ],
    );
  }
}

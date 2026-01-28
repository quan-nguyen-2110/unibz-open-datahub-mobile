import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // static _MyAppState of(BuildContext context) =>
  //     context.findAncestorStateOfType<_MyAppState>()!;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  int selectedIndex = -1; // -1 means none selected initially

  GestureDetector buildActions(
    String text,
    IconData icon,
    int index,
    Color iconColor,
  ) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          if (selectedIndex == index) {
            selectedIndex = -1; // deselect
          } else {
            selectedIndex = index;
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

  Container buildWeatherNow() {
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
        padding: EdgeInsetsDirectional.fromSTEB(
          valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 20.0,
            0.0,
          ),
          valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 20.0,
            0.0,
          ),
          valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 20.0,
            0.0,
          ),
          valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < kBreakpointSmall ? 20.0 : 20.0,
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
                  0.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.umbrella,
                      color: FlutterFlowTheme.of(context).warning,
                      size: 24.0,
                    ),
                    Flexible(
                      child: Padding(
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
                        child: Text(
                          'Rain expected at 6PM - Dont forget your umberlla!',
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
                                color: FlutterFlowTheme.of(context).warning,
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
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 10.0
                      : 10.0,
                  0.0,
                ),
                0.0,
                0.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '22',
                            style: FlutterFlowTheme.of(context).bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(
                                    context,
                                  ).primaryBackground,
                                  fontSize: 70.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.fontStyle,
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
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall
                                    ? 10.0
                                    : 10.0,
                                0.0,
                              ),
                            ),
                            child: Text(
                              '*C',
                              style: FlutterFlowTheme.of(context).bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FlutterFlowTheme.of(
                                        context,
                                      ).bodyMedium.fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(
                                      context,
                                    ).primaryBackground,
                                    fontSize: 35.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Partly Sunny',
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
                      color: FlutterFlowTheme.of(context).accent2,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.sunny,
                      color: FlutterFlowTheme.of(context).warning,
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
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 25.0
                      : 25.0,
                  0.0,
                ),
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                    color: FlutterFlowTheme.of(context).secondary,
                    size: 24.0,
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
                      '65 %',
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
                        MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                      color: FlutterFlowTheme.of(context).primary,
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
                      '12 km/h',
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
            Divider(color: FlutterFlowTheme.of(context).secondaryText),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
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
                        color: FlutterFlowTheme.of(context).accent1,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Icon(
                        Icons.person_2,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 17.0,
                      ),
                    ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AI Suggestion',
                            style: FlutterFlowTheme.of(context).bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(
                                      context,
                                    ).bodyMedium.fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(
                                    context,
                                  ).secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).bodyMedium.fontStyle,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
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

  Container buildMenu() {
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
        controller: _model.tabBarController,
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        bottomNavigationBar: buildMenu(),
        body: Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall
                                    ? 10.0
                                    : 19.0,
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
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: FlutterFlowTheme.of(
                                                    context,
                                                  ).primaryBackground,
                                                  size: 24.0,
                                                ),
                                                Text(
                                                  'Bolzano, Italy',
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        letterSpacing: 0.0,
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
                                                ),
                                              ],
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
                                                        ? 10.0
                                                        : 10.0,
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  0.0,
                                                ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Hello, Quan',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.override(
                                                        font: GoogleFonts.readexPro(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                    context,
                                                                  )
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                              context,
                                                            ).primaryBackground,
                                                        fontSize: 25.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                  context,
                                                                )
                                                                .bodyMedium
                                                                .fontStyle,
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
                                                              ? 10.0
                                                              : 10.0,
                                                          0.0,
                                                        ),
                                                        0.0,
                                                        0.0,
                                                        0.0,
                                                      ),
                                                  child: Icon(
                                                    Icons.waving_hand,
                                                    color: FlutterFlowTheme.of(
                                                      context,
                                                    ).primaryBackground,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(
                                          1.0,
                                          0.0,
                                        ),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                              0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                              0.15,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(
                                              context,
                                            ).secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.notifications_outlined,
                                            color: FlutterFlowTheme.of(
                                              context,
                                            ).primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
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
                                      children: [
                                        Icon(
                                          Icons.auto_awesome_outlined,
                                          color: FlutterFlowTheme.of(
                                            context,
                                          ).primaryBackground,
                                          size: 24.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                valueOrDefault<double>(
                                                  MediaQuery.sizeOf(
                                                            context,
                                                          ).width <
                                                          kBreakpointSmall
                                                      ? 10.0
                                                      : 19.0,
                                                  0.0,
                                                ),
                                                0.0,
                                                0.0,
                                                0.0,
                                              ),
                                          child: Text(
                                            'AI-powered suggestions just for you',
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
                                                  ).primaryBackground,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 20.0
                                            : 20.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        buildActions(
                                          'Food',
                                          Icons.fastfood_outlined,
                                          1,
                                          FlutterFlowTheme.of(context).warning,
                                        ),
                                        buildActions(
                                          'Events',
                                          Icons.calendar_month,
                                          2,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        buildActions(
                                          'Stay',
                                          Icons.location_city_sharp,
                                          3,
                                          FlutterFlowTheme.of(
                                            context,
                                          ).secondary,
                                        ),
                                        buildActions(
                                          'Surpirse',
                                          Icons.auto_awesome_sharp,
                                          4,
                                          FlutterFlowTheme.of(context).success,
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
                                            ? 50.0
                                            : 50.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                    ),
                                    child: Text(
                                      'Weather Now',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 20.0
                                            : 20.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                    ),
                                    child: buildWeatherNow(),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 50.0
                                            : 50.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                    ),
                                    child: Text(
                                      'Traffic & Transit',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FlutterFlowTheme.of(
                                                context,
                                              ).bodyMedium.fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(
                                              context,
                                            ).primaryBackground,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FlutterFlowTheme.of(
                                              context,
                                            ).bodyMedium.fontStyle,
                                          ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
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
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
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
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 30.0
                                            : 30.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Picked for You',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.readexPro(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).bodyMedium.fontStyle,
                                                ),
                                                color: FlutterFlowTheme.of(
                                                  context,
                                                ).primaryBackground,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FlutterFlowTheme.of(
                                                  context,
                                                ).bodyMedium.fontStyle,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  16.0,
                                                  0.0,
                                                  16.0,
                                                  0.0,
                                                ),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                ),
                                            color: FlutterFlowTheme.of(
                                              context,
                                            ).primaryText,
                                            textStyle:
                                                FlutterFlowTheme.of(
                                                  context,
                                                ).titleSmall.override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).titleSmall.fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                          context,
                                                        ).titleSmall.fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                    context,
                                                  ).primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).titleSmall.fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                        context,
                                                      ).titleSmall.fontStyle,
                                                ),
                                            elevation: 0.0,
                                            borderRadius: BorderRadius.circular(
                                              8.0,
                                            ),
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
                                            ? 20.0
                                            : 20.0,
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
                                        MediaQuery.sizeOf(context).width <
                                                kBreakpointSmall
                                            ? 20.0
                                            : 20.0,
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
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisSize: MainAxisSize.max, children: []),
                    Column(mainAxisSize: MainAxisSize.max, children: []),
                    Column(mainAxisSize: MainAxisSize.max, children: []),
                    Column(mainAxisSize: MainAxisSize.max, children: []),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

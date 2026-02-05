import 'package:open_data_hub_mobile_app/widgets/actions_widget.dart';
import 'package:open_data_hub_mobile_app/widgets/menu_widget.dart';
import 'package:open_data_hub_mobile_app/widgets/picked_for_you_widget.dart';
import 'package:open_data_hub_mobile_app/widgets/ski_area_widget.dart';
import 'package:open_data_hub_mobile_app/widgets/traffic_and_transit_widget.dart';
import 'package:open_data_hub_mobile_app/widgets/weather_now_widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page_model.dart';
import 'services/location_service.dart'; // Importing LocationService

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

    fetchCity();
    fetchPosition();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  int selectedIndex = -1; // -1 means none selected initially
  String cityName = "Loading ...";
  double latitude = 0.0;
  double longitude = 0.0;

  void fetchPosition() async {
    try {
      var position = await LocationService.getCurrentPosition();
      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
      });
      print(
        'Current position: Lat ${position.latitude}, Lon ${position.longitude}',
      );
    } catch (e) {
      print('Error getting location: $e');
    }
  }

  void fetchCity() {
    LocationService.getCurrentCity()
        .then((city) {
          setState(() {
            cityName = city;
          });
        })
        .catchError((error) {
          print('Error getting city: $error');
        });
  }

  final GlobalKey weatherKey = GlobalKey();
  final GlobalKey trafficKey = GlobalKey();
  final GlobalKey skiAreaKey = GlobalKey();
  final GlobalKey pickedForYouKey = GlobalKey();
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
        bottomNavigationBar: MenuWidget(
          tabBarController: _model.tabBarController,
        ),
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
                                                  cityName,
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
                                            // Hello, Quan 👋
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
                                  // Actions Widget
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
                                    child: ActionsWidget(
                                      weatherKey: weatherKey,
                                      trafficKey: trafficKey,
                                      skiAreaKey: skiAreaKey,
                                      pickedForYouKey: pickedForYouKey,
                                    ),
                                  ),
                                  // Weather Now Widget
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
                                    child: WeatherNowWidget(
                                      key: weatherKey,
                                      latitude: latitude,
                                      longitude: longitude,
                                    ),
                                  ),
                                  // Transic & Traffic Widget
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
                                    child: TrafficAndTransitWidget(
                                      key: trafficKey,
                                    ),
                                  ),
                                  // Ski Areas Widget
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
                                    child: SkiAreaWidget(
                                      key: skiAreaKey,
                                      latitude: latitude,
                                      longitude: longitude,
                                    ),
                                  ),
                                  // Picked For You Widget
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
                                    child: PickedForYouWidget(
                                      key: pickedForYouKey,
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

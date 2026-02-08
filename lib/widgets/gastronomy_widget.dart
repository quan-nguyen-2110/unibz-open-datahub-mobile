import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_data_hub_mobile_app/open_data_hub/gastronomy.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';

class GastronomyWidget extends StatefulWidget {
  final double latitude;
  final double longitude;
  final GlobalKey? key; // Add key parameter

  const GastronomyWidget({
    this.key, // Use passed key
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GastronomyWidgetState createState() => _GastronomyWidgetState();
}

class _GastronomyWidgetState extends State<GastronomyWidget> {
  List<Gastronomy> gastronomies = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    GastronomyService service = GastronomyService();
    // Use dummy coordinates if 0.0 passed, or current.
    // Ideally use real ones.
    var data = await service.fetchGastronomy(widget.latitude, widget.longitude);
    if (mounted) {
      setState(() {
        gastronomies = data;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
          child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary));
    }

    if (gastronomies.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            'No gastronomy items found nearby.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.readexPro(),
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Text(
                'Gastronomy',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250, // Height for the horizontal list
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: gastronomies.length,
            itemBuilder: (context, index) {
              final item = gastronomies[index];
              return Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Container(
                  width: 220,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        child: Image.network(
                          item.imageUrl ?? 'https://via.placeholder.com/200x120',
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            color: FlutterFlowTheme.of(context).accent3,
                            height: 120,
                            child: Icon(Icons.broken_image,
                                color: FlutterFlowTheme.of(context).secondaryText),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.readexPro(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                            ),
                            if (item.city != null)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  item.city!,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.readexPro(),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ),
                            if (item.category != null)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.restaurant_menu,
                                      size: 12,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      item.category!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                                fontSize: 10),
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            if (item.description != null)
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  item.description!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.readexPro(
                                            fontSize: 10),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
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

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:postos_local/controlers/postos_controller.dart';
import 'package:provider/provider.dart';

final appKey = GlobalKey();

class PostosPage extends StatelessWidget {
  const PostosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: appKey,
        appBar: AppBar(
          title: Center(
            child: Text('Meu Local'),
          ),
        ),
        body: ChangeNotifierProvider<PostosController>(
          create: (context) => PostosController(),
          child: Builder(builder: (context) {
            final local = context.watch<PostosController>();

            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(local.lat, local.long),
                zoom: 18,
              ),
              zoomControlsEnabled: true,
              myLocationEnabled: true,
              onMapCreated: local.onMapCreated,
              markers: local.markers,
            );
          }),
        ));
  }
}

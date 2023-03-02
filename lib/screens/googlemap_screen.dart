import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng myLocation = const LatLng(27.7047139, 85.3295421);

  @override
  void initState() {
    markers.add(
      Marker(
        markerId: MarkerId(myLocation.toString()),
        position: myLocation,
        infoWindow: const InfoWindow(
          title: 'Narayan Dai ko momo ',
          snippet: 'momo',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GoogleMap(
        zoomControlsEnabled: true, //enable zoom in and zoom out
        initialCameraPosition: CameraPosition(
          target: myLocation, //initial position
          zoom: 10, // initial zoom level
        ),
        markers: markers, // markers to show on map
        mapType: MapType.normal,
        onMapCreated: (controller) {
          // method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }
}

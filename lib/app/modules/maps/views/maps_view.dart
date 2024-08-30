// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart'; // Correct import
// import 'package:location/location.dart';

// import '../../../data/const/api.dart';

// class MapsView extends StatefulWidget {
//   const MapsView({super.key});

//   @override
//   _MapsViewState createState() => _MapsViewState();
// }

// class _MapsViewState extends State<MapsView> {
//   final Completer<GoogleMapController> _mapController =
//       Completer<GoogleMapController>();
//   static const LatLng _pGooglePlex = LatLng(-7.983908, 112.621391);
//   static const LatLng _pApplePlex = LatLng(-7.9567, 112.6187);
//   late Location _locationController;
//   // late GoogleMapController _mapController;
//   LatLng? _currentP = null;

//   Map<PolylineId, Polyline> polylines = {};

//   @override
//   void initState() {
//     super.initState();
//     _locationController = Location();
//     getLocationUpdates().then((_) => {
//       getPolylinePoints().then((coordinates) =>{
//         generatePolyLineFromPoints(coordinates),

//       } )
//     });
//   }

//   @override
//   void dispose() {
//     // _mapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height =
//         MediaQuery.of(context).size.height - AppBar().preferredSize.height;
//     final width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: _currentP == null
//           ? const Center(
//               child: Text("Loading..."),
//             )
//           : GoogleMap(
//               onMapCreated: ((GoogleMapController controller) =>
//                   _mapController.complete(controller)),
//               initialCameraPosition:
//                   CameraPosition(target: _pGooglePlex, zoom: 13),
//               markers: {
//                 Marker(
//                   markerId: MarkerId("_currentLocation"),
//                   icon: BitmapDescriptor.defaultMarker,
//                   position: _currentP!,
//                 ),
//                 Marker(
//                   markerId: MarkerId("_sourceLocation"),
//                   icon: BitmapDescriptor.defaultMarker,
//                   position: _pGooglePlex,
//                 ),
//                 Marker(
//                   markerId: MarkerId("_destinationLocation"),
//                   icon: BitmapDescriptor.defaultMarker,
//                   position: _pApplePlex,
//                 ),
//               },
//               polylines: Set<Polyline>.of(polylines.values),
//             ),
//     );
//   }

//   Future<void> _cameraToPosition(LatLng pos) async {
//     final GoogleMapController controller = await _mapController.future;
//     CameraPosition _newCameraPosition = CameraPosition(target: pos, zoom: 13);

//     await controller.animateCamera(
//       CameraUpdate.newCameraPosition(_newCameraPosition),
//     );
//   }

//   Future<void> getLocationUpdates() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;

//     _serviceEnabled = await _locationController.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await _locationController.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }

//     _permissionGranted = await _locationController.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await _locationController.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }

//     _locationController.onLocationChanged
//         .listen((LocationData currentLocation) {
//       if (currentLocation.latitude != null &&
//           currentLocation.longitude != null) {
//         setState(() {
//           _currentP =
//               LatLng(currentLocation.latitude!, currentLocation.longitude!);
//           _cameraToPosition(_currentP!);
//         });
//       }
//     });
//   }

//     Future<List<LatLng>> getPolylinePoints() async{
//       List<LatLng> polyLineCoordinates = [];
//       PolylinePoints polylinePoints = PolylinePoints();
//       PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//         googleApiKey: GOOGLE_MAPS_API_KEY,
//         request: PolylineRequest(origin: PointLatLng(_pGooglePlex.latitude, _pGooglePlex.longitude), destination: PointLatLng(_pApplePlex.latitude, _pApplePlex.longitude), mode: TravelMode.driving)
        
//       );

//       if (result.points.isNotEmpty) {
//         result.points.forEach((PointLatLng point){
//           polyLineCoordinates.add(LatLng(point.latitude, point.longitude));
//         });
//       }else {
//         print(result.errorMessage);
//       }
//       return polyLineCoordinates;
//     }

//     void generatePolyLineFromPoints(List<LatLng> polyLineCoordinates) async{
//       PolylineId id = PolylineId("poly");
//       Polyline polyline = Polyline(polylineId: id, color: Colors.black, points: polyLineCoordinates, width: 8 );
//       setState(() {
//         polylines[id] = polyline;
//       });
//     }
// }

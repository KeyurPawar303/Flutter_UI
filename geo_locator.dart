/*import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  Position? position;
  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
        Fluttertoast.showToast(msg: 'Location Service is disabled');
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        Fluttertoast.showToast(msg: 'permission needed');
      }
    }
    if(permission == LocationPermission.denied){
      Fluttertoast.showToast(msg: 'permission denied forever');
    }
    Position currentposition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentposition;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Geolocation'),),
      body: Column(
        children: [
          const Text('Location'),
          ElevatedButton(onPressed: (){
            fetchposition();
          }, child:  Text(position == null ? 'GetLocation': position.toString()))
        ],
      ),
    );
  }
}*/


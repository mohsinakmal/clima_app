import 'package:clima_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState(){
    setState(() {
      _determinePosition();
    });
    super.initState();
  }

  void _determinePosition() async {
    Location location = Location();
   await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}

import 'package:geolocator/geolocator.dart';
import '../services/networking.dart';
import 'package:flutter/material.dart';
import '../screens/location_screen.dart';

class Location {
  Future<Position> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    try {
      Position pos = await Geolocator.getCurrentPosition();

      return pos;
    } catch (e) {
      //print(e);
      throw e;
    }

    //return pos;
  }
}

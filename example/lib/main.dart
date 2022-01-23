import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:location_geocoder/location_geocoder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  ///Main App
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /// sub page
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: ADD YOUR MAP API KEY
    const _apiKey = "";
    late LocatitonGeocoder geocoder = LocatitonGeocoder(_apiKey);

    ///converts `coordinates` to actual `address` using google map api
    Future<void> _getAddress() async {
      try {
        final address = await geocoder
            .findAddressesFromCoordinates(Coordinates(9.9312, 76.2673));
        var message = address.first.addressLine;
        if (message == null) return;
        log(message);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('SOMETING WENT WRONG\nDID YOU ADD API KEY '),
          ),
        );
        rethrow;
      }
    }

    ///converts `address` to actual `coordinates` using google map api
    Future<void> _getLatLang() async {
      try {
        final address = await geocoder.findAddressesFromQuery('kochi,kerala');
        var message = address.first.coordinates.toString();
        log(message);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('SOMETING WENT WRONG\nDID YOU ADD API KEY '),
          ),
        );
        rethrow;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Geocoder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: _getAddress,
              child: const Text('Location from Lat/lang'),
            ),
            TextButton(
              onPressed: _getLatLang,
              child: const Text('Location from Address'),
            )
          ],
        ),
      ),
    );
  }
}

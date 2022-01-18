# location_geocoder

Flutter package to convert latitude/longitude to address and from address to latitude/longitude.
provides easy geocoding and reverse-geocoding features. ( geocoder )
uses goolgle's location api

## Getting Started

To Get Address from Coordinates

```dart
        const _apiKey = 'YOUR_MAP_API_KEY';
        final LocatitonGeocoder geocoder = LocatitonGeocoder(_apiKey);
        final address = await geocoder
            .findAddressesFromCoordinates(Coordinates(9.9312, 76.2673));
        print(address.first.addressLine);
```

To Get Coordinates from Address

```dart
        const _apiKey = 'YOUR_MAP_API_KEY';
        final LocatitonGeocoder geocoder = LocatitonGeocoder(_apiKey);
        final address = await geocoder.findAddressesFromQuery('kochi,kerala');;
        print(address.first.coordinates);
```

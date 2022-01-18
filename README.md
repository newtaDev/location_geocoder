# location_geocoder

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
